import random
from app_logic import place_order

if __name__ == "__main__":
    customer_id = random.randint(1, 1000)
    inventory_id = 1
    quantity = 2
    print(f"Placing order: customer {customer_id}, item {inventory_id}, qty {quantity}")
    place_order(customer_id, inventory_id, quantity)
