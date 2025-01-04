-- 10. Закройте возможность открытия (установите дату окончания действия) для типов продуктов, 
-- по счетам продуктов которых, не было движений более одного месяца.

UPDATE product_type
SET end_date = CURRENT_DATE
WHERE id IN (
    SELECT DISTINCT pt.id
    FROM product_type pt
    JOIN products p ON pt.id = p.product_type_id
    JOIN accounts a ON p.id = a.product_ref
    LEFT JOIN records r ON a.id = r.acc_ref
    WHERE 
        r.oper_date IS NULL OR r.oper_date < CURRENT_DATE - INTERVAL '1 month'
);
