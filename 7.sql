-- 7. В результате сбоя в базе данных разъехалась информация между остатками и операциями по счетам. 
-- Напишите нормализацию (процедуру выравнивающую данные), которая найдет такие счета и восстановит остатки по счету.

DO $$
BEGIN
    -- Обновление остатков на основе операций
    UPDATE accounts a
    SET saldo = COALESCE((
        SELECT 
            SUM(CASE 
                WHEN r.dt = 0 THEN r.sum    -- Кредит увеличивает остаток
                WHEN r.dt = 1 THEN -r.sum   -- Дебет уменьшает остаток
                ELSE 0
            END)
        FROM 
            records r
        WHERE 
            r.acc_ref = a.id
    ), 0) -- Если операций нет, остаток становится 0
    WHERE EXISTS (
        SELECT 1
        FROM records r
        WHERE r.acc_ref = a.id
    );

    RAISE NOTICE 'Остатки успешно обновлены!';
END $$;

-- Перед запуском процедуры рекомендуется проверить данные:
-- SELECT a.id, a.saldo, 
--     COALESCE((
--         SELECT SUM(CASE 
--             WHEN r.dt = 0 THEN r.sum 
--             WHEN r.dt = 1 THEN -r.sum 
--             ELSE 0 
--         END)
--         FROM records r
--         WHERE r.acc_ref = a.id
--     ), 0) AS calculated_saldo
-- FROM accounts a;

