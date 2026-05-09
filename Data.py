import psycopg2
from psycopg2 import extras
from faker import Faker
import random
from datetime import datetime, timedelta
import decimal

fake = Faker()

DB_CONFIG = {
    "host": "localhost",
    "dbname": "flowershop",
    "user": "postgres",
    "password": "SS373",
    "port": "5432"
}

NUM_CUSTOMERS = 1000
NUM_INVENTORY = 100
NUM_ORDERS = 5000

def generate_data():
    try:
        conn = psycopg2.connect(**DB_CONFIG)
        cur = conn.cursor()
        print("Connected to database.")

        print("Clearing old data...")
        cur.execute("TRUNCATE TABLE OrderLine, Orders, Inventory, Customers RESTART IDENTITY CASCADE;")
        conn.commit()

        print(f"Inserting {NUM_CUSTOMERS} customers...")
        customers = [
            (fake.first_name(), fake.last_name(), fake.unique.email())
            for _ in range(NUM_CUSTOMERS)
        ]
        extras.execute_values(
            cur,
            "INSERT INTO Customers (FirstName, LastName, Email) VALUES %s",
            customers
        )
        conn.commit()

        print(f"Inserting {NUM_INVENTORY} inventory items...")
        adjectives = ['Red', 'White', 'Pink', 'Yellow', 'Blue', 'Elegant', 'Classic', 'Royal', 'Sunny', 'Midnight']
        flowers = ['Rose', 'Lily', 'Tulip', 'Orchid', 'Carnation', 'Sunflower', 'Peony', 'Daisy']

        inventory_data = []
        for _ in range(NUM_INVENTORY):
            name = f"{random.choice(adjectives)} {random.choice(flowers)} Bouquet"
            stock = random.randint(10, 500)
            price = decimal.Decimal(random.randrange(1999, 19999)) / 100
            inventory_data.append((name, stock, price))

        inventory_records = extras.execute_values(
            cur,
            "INSERT INTO Inventory (BouquetName, StockQuantity, Price) VALUES %s RETURNING InventoryID, Price",
            inventory_data,
            fetch=True
        )
        inventory_dict = {rec[0]: rec[1] for rec in inventory_records}
        conn.commit()

        print(f"Generating {NUM_ORDERS} orders...")
        orders = []
        order_lines = []
        start_date = datetime.now() - timedelta(days=365)

        for order_id in range(1, NUM_ORDERS + 1):
            customer_id = random.randint(1, NUM_CUSTOMERS)
            order_date = fake.date_time_between(start_date=start_date, end_date='now')

            num_items = random.randint(1, 4)
            items = random.sample(list(inventory_dict.keys()), num_items)

            total = decimal.Decimal(0)

            for inv_id in items:
                qty = random.randint(1, 3)
                total += inventory_dict[inv_id] * qty
                order_lines.append((order_id, inv_id, qty))

            orders.append((customer_id, order_date, total))

        print("Inserting orders...")
        extras.execute_values(
            cur,
            "INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES %s",
            orders
        )

        print("Inserting order lines...")
        extras.execute_values(
            cur,
            "INSERT INTO OrderLine (OrderID, InventoryID, Quantity) VALUES %s",
            order_lines
        )

        conn.commit()
        print("Data generation completed.")

    except Exception as e:
        print(f"Error: {e}")
        if conn:
            conn.rollback()
    finally:
        if cur:
            cur.close()
        if conn:
            conn.close()

if __name__ == "__main__":
    generate_data()