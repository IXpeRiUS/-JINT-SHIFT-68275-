-- 11. В модель данных добавьте сумму договора по продукту. 
-- Заполните поле для всех продуктов суммой максимальной дебетовой операции по счету для продукта типа КРЕДИТ, 
-- и суммой максимальной кредитовой операции по счету продукта для продукта типа ДЕПОЗИТ или КАРТА.

-- Добавление поля contract_amount в таблицу products
ALTER TABLE products
ADD COLUMN contract_amount NUMERIC(15, 2);

-- Обновление данных в поле contract_amount
UPDATE products
SET contract_amount = (
    CASE 
        -- Для продуктов типа КРЕДИТ
        WHEN product_type_id IN (
            SELECT id 
            FROM product_type 
            WHERE name = 'КРЕДИТ'
        ) THEN (
            SELECT MAX(r.sum)
            FROM accounts a
            JOIN records r ON a.id = r.acc_ref
            WHERE a.product_ref = products.id AND r.dt = 1
        )
        -- Для продуктов типа ДЕПОЗИТ и КАРТА
        WHEN product_type_id IN (
            SELECT id 
            FROM product_type 
            WHERE name IN ('ДЕПОЗИТ', 'КАРТА')
        ) THEN (
            SELECT MAX(r.sum)
            FROM accounts a
            JOIN records r ON a.id = r.acc_ref
            WHERE a.product_ref = products.id AND r.dt = 0
        )
        ELSE NULL
    END
);
