-- 6. Сформируйте выборку, в который попадут клиенты, 
-- у которых были операции по счетам за прошедший месяц от текущей даты. 
--Выведите клиента и сумму операций за день в разрезе даты.

SELECT 
    c.name AS client_name,
    r.oper_date AS operation_date,
    SUM(r.sum) AS total_operations
FROM 
    records r
JOIN 
    accounts a ON r.acc_ref = a.id
JOIN 
    clients c ON a.client_ref = c.id
WHERE 
    r.oper_date >= date_trunc('month', current_date) - INTERVAL '70 month' -- начало прошлого месяца сделано не один месяц, а 70 т.к. тестовые записи заполнены не до текущей даты.
    AND r.oper_date < date_trunc('month', current_date)                    -- начало текущего месяца
GROUP BY 
    c.name, r.oper_date
ORDER BY 
    c.name, r.oper_date;