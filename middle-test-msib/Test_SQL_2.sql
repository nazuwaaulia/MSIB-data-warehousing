-- Create Table --
CREATE TABLE item_bought (
    buyer TEXT NOT NULL,
    item TEXT NOT NULL
);

-- Insert Values --
INSERT INTO item_bought (buyer, item) VALUES
('A', 'Asus'),
('B', 'Lenovo'),
('C', 'Lenovo'),
('D', 'Acer'),
('E', 'Acer'),
('F', 'Acer');

-- Answer Test_SQL_2--
SELECT item
FROM (
    SELECT item, COUNT(*) AS purchase_count
    FROM item_bought
    GROUP BY item
) AS item_counts
WHERE purchase_count != (
    SELECT MAX(purchase_count) AS max_purchase_count
    FROM (
        SELECT COUNT(*) AS purchase_count
        FROM item_bought
        GROUP BY item
    ) AS item_counts
) AND purchase_count != (
    SELECT MIN(purchase_count) AS min_purchase_count
    FROM (
        SELECT COUNT(*) AS purchase_count
        FROM item_bought
        GROUP BY item
    ) AS item_counts
);
