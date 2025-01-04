<h2>Сопроводительная записка. Исполнитель [JINT] (SHIFT-68275) Дойников Никита Александрович</h2>

Версия СУБД PostgreSQL 17.2.3
В таблице clients сокращены длина имени, место рождения и адрес проживания до 255 знаков, т.к. поле в 1000 знаков избыточно.
В таблице accounts для работы с остатком по счету выбран тип numeric с 15 знаками до запятой и 2 после.
В таблице accounts столбец acc_num с номером счета сделан уникальным.
В таблице records столбец dt добавлена проверка, чтобы число было 0 или 1.

<h2>Выполнение задний</h2>
1.	Скрипт создания таблиц сохранен а файле SHIFT-68275.sql
2.	Скрипт заполнения БД сохранен в файле ex_table_st.sql
3.	Выполненные задания сохранены в файлах *.sql – где * это номер задачи.
