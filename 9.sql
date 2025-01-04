-- 9. Закройте продукты (установите дату закрытия равную текущей) типа КРЕДИТ, 
-- у которых произошло полное погашение, но при этом не было повторной выдачи.

UPDATE products
SET close_date = CURRENT_DATE
WHERE id IN (
    SELECT p.id
    FROM products p
    JOIN accounts a ON p.id = a.product_ref
    LEFT JOIN records r ON a.id = r.acc_ref AND r.dt = 0
    WHERE 
        p.product_type_id = (SELECT id FROM product_type WHERE name = 'КРЕДИТ') -- Продукт типа "КРЕДИТ"
        AND a.saldo = 0                                                         -- Полностью погашен
        AND p.close_date IS NULL                                                -- Продукт не закрыт
        AND r.id IS NULL                                                        -- Нет операций новой выдачи кредита
);
