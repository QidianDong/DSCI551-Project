import psycopg2
import datetime

DB_CONFIG = {
    "host": "localhost",
    "dbname": "flowershop",
    "user": "postgres",
    "password": "SS373",
    "port": "5432"
}

def place_order(customer_id, inventory_id, quantity):
    conn = None
    try:
        conn = psycopg2.connect(**DB_CONFIG)
        cur = conn.cursor()
        cur.execute("BEGIN;")
        cur.execute(
            """
            UPDATE Inventory
            SET StockQuantity = StockQuantity - %s
            WHERE InventoryID = %s AND StockQuantity >= %s
            RETURNING Price, StockQuantity;
            """,
            (quantity, inventory_id, quantity)
        )
        row = cur.fetchone()
        if not row:
            raise Exception("Insufficient stock")
        unit_price, new_stock = row
        total_price = unit_price * quantity
        cur.execute(
            "INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES (%s, %s, %s) RETURNING OrderID;",
            (customer_id, datetime.datetime.now(), total_price)
        )
        order_id = cur.fetchone()[0]
        cur.execute(
            "INSERT INTO OrderLine (OrderID, InventoryID, Quantity) VALUES (%s, %s, %s);",
            (order_id, inventory_id, quantity)
        )
        conn.commit()
        print(f"COMMIT: order {order_id}, new stock {new_stock}")
        return order_id
    except Exception as e:
        if conn:
            conn.rollback()
        print(f"ROLLBACK: {e}")
        return None
    finally:
        if conn:
            cur.close()
            conn.close()

if __name__ == "__main__":
    place_order(1, 1, 3)
