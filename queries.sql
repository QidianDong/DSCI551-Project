-- X
ROLLBACK;
UPDATE Inventory SET StockQuantity = 230 WHERE InventoryID = 1;

-- A. MVCC（xmin/xmax）
SELECT xmin, xmax, InventoryID, BouquetName, StockQuantity
FROM Inventory
WHERE InventoryID = 1;

-- B. dead tuples
SELECT relname, n_live_tup, n_dead_tup
FROM pg_stat_user_tables
WHERE relname = 'inventory';

-- C. Query Planner & EXPLAIN
EXPLAIN ANALYZE SELECT * FROM Orders WHERE CustomerID = 55;

CREATE INDEX IF NOT EXISTS idx_orders_customer ON Orders(CustomerID);
EXPLAIN ANALYZE SELECT * FROM Orders WHERE CustomerID = 55;

-- D
SELECT pid, usename, state, query FROM pg_stat_activity WHERE datname = 'flowershop';
