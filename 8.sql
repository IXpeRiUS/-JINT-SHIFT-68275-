-- 8. Сформируйте выборку, который содержит информацию о клиентах, которые полностью погасили кредит, 
-- но при этом не закрыли продукт и пользуются им дальше (по продукту есть операция новой выдачи кредита).

SELECT 
    c.id AS client_id,
    c.name AS client_name,
    p.id AS product_id,
    p.name AS product_name,
    a.id AS account_id,
    a.name AS account_name,
    a.saldo AS current_balance,
    r.oper_date AS last_operation_date,
    r.sum AS last_operation_sum
FROM 
    clients c
JOIN products p ON c.id = p.client_ref
JOIN accounts a ON p.id = a.product_ref
JOIN records r ON a.id = r.acc_ref
WHERE 
    p.product_type_id = (SELECT id FROM product_type WHERE name = 'КРЕДИТ') -- Продукт типа "КРЕДИТ"
    AND a.saldo = 0                                                         -- Полностью погашен
    AND p.close_date IS NULL                                                -- Продукт не закрыт
    AND r.dt = 0                                                            -- Новая выдача кредита
    AND r.oper_date = (                                                     -- Последняя операция
        SELECT MAX(r2.oper_date)
        FROM records r2
        WHERE r2.acc_ref = a.id
    )
ORDER BY 
    c.name, p.name;
