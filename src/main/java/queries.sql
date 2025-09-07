-- --UPDATE
-- UPDATE "user"
--   SET role_id = 1
--     WHERE id = 10;

-- --UPDATE
-- UPDATE "user"
--    SET password = 'superQWERTYpass'
--      WHERE id = 1;

--DELETE -> checked that can't delete order, before that I need to delete order-items
DELETE FROM order_items -- 1-st Step
    WHERE order_id = 5;
         DELETE FROM orders   -- 2-nd Step
              WHERE data = '2025-08-09';


--WHERE
SELECT "user".user_name
    FROM "user"
        WHERE role_id = 1;

--WHERE
SELECT "user".user_name
     FROM "user"
        WHERE role_id = 2;

--WHERE
SELECT items.price, items.name
      FROM items
         ORDER BY price DESC;

--ORDER BY
SELECT order_items.quantity
      FROM order_items
         ORDER BY quantity ASC;

--WHERE
SELECT items.price
      FROM items
        WHERE price >= 1500 AND price <= 7800;

--WHERE -> BETWEEN
SELECT items.price
      FROM items
        WHERE price BETWEEN 7000 AND 10000;

--LIKE
SELECT items.name, items.id
      FROM items
          WHERE name LIKE '%lamp%';

--SUM() -> GROUP BY
SELECT items.id,
       SUM(items.price * order_items.quantity) AS total
     FROM order_items
         JOIN items ON order_items.items_id = items.id
            GROUP BY items.id;

--COUNT(*) -> GROUP BY
SELECT items.name,
       COUNT(*) AS items_nomination_total
       FROM items
          GROUP BY items.name;


--HAVING
SELECT items.id,
       SUM(items.price * order_items.quantity) AS total
      FROM order_items
         JOIN items ON order_items.items_id = items.id
           GROUP BY items.id
              HAVING SUM(price * quantity) > 250000
                 ORDER BY total DESC;


--INNER JOIN
SELECT o.id, o.user_id, o.data
       FROM orders AS o
         JOIN "user" AS u ON o.user_id = u.id;

--FULL OUTER JOIN
SELECT r.id, r.name, u.user_name
       FROM role r
         FULL OUTER JOIN "user" AS u ON r.id = u.role_id;

--JOIN (output information about user and his order item)
SELECT u.id,u.user_name, u.email, o.data, oi.order_id, oi.items_id, i.name
     FROM "user" u
         JOIN orders AS o ON o.user_id = u.id
         JOIN order_items AS oi ON oi.order_id = o.id
         JOIN items AS i ON oi.items_id = i.id;
