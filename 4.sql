--4. Сформируйте отчет, который содержит все счета, относящиеся к продуктам типа ДЕПОЗИТ, 
--принадлежащих клиентам, у которых нет открытых продуктов типа КРЕДИТ.

SELECT 
    a.id AS account_id,
    a.name AS account_name,
    a.saldo AS account_balance,
    a.open_date AS account_open_date,
    a.close_date AS account_close_date,
    a.acc_num AS account_number,
    c.id AS client_id,
    c.name AS client_name,
    c.address AS client_address
FROM 
    accounts a
JOIN 
    products p ON a.product_ref = p.id
JOIN 
    product_type pt ON p.product_type_id = pt.id
JOIN 
    clients c ON a.client_ref = c.id
WHERE 
    pt.name = 'ДЕПОЗИТ' AND
    c.id NOT IN (
        SELECT DISTINCT c.id
        FROM clients c
        JOIN products p ON c.id = p.client_ref
        JOIN product_type pt ON p.product_type_id = pt.id
        WHERE pt.name = 'КРЕДИТ' AND p.close_date IS NULL
    );
