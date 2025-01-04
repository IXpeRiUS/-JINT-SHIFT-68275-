-- 5. Сформируйте выборку, который содержит средние движения по счетам 
-- в рамках одного произвольного дня, в разрезе типа продукта.

SELECT 
    pt.name AS product_type,
    r.oper_date AS operation_date,
    AVG(CASE WHEN r.dt = 1 THEN r.sum ELSE NULL END) AS avg_debit,
    AVG(CASE WHEN r.dt = 0 THEN r.sum ELSE NULL END) AS avg_credit
FROM 
    records r
JOIN 
    accounts a ON r.acc_ref = a.id
JOIN 
    products p ON a.product_ref = p.id
JOIN 
    product_type pt ON p.product_type_id = pt.id
WHERE r.oper_date = '2016-09-01' -- здесь выбрать дату произвольного дня
    GROUP BY 
    pt.name, r.oper_date
ORDER BY 
    pt.name, r.oper_date;
