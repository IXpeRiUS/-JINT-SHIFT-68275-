DO $$
BEGIN
	insert into tarifs values (1,'Тариф за выдачу кредита', 10);
	insert into tarifs values (2,'Тариф за открытие счета', 10);
	insert into tarifs values (3,'Тариф за обслуживание карты', 10);
	
	insert into product_type values (1, 'КРЕДИТ', to_date('01.01.2018','DD.MM.YYYY'), null, 1);
	insert into product_type values (2, 'ДЕПОЗИТ', to_date('01.01.2018','DD.MM.YYYY'), null, 2);
	insert into product_type values (3, 'КАРТА', to_date('01.01.2018','DD.MM.YYYY'), null, 3);
	
	insert into clients values (1, 'Сидоров Иван Петрович', 'Россия, Московская облать, г. Пушкин', to_date('01.01.2001','DD.MM.YYYY'), 'Россия, Московская облать, г. Пушкин, ул. Грибоедова, д. 5', '2222 555555, выдан ОВД г. Пушкин, 10.01.2015');
	insert into clients values (2, 'Иванов Петр Сидорович', 'Россия, Московская облать, г. Клин', to_date('01.01.2001','DD.MM.YYYY'), 'Россия, Московская облать, г. Клин, ул. Мясникова, д. 3', '4444 666666, выдан ОВД г. Клин, 10.01.2015');
	insert into clients values (3, 'Петров Сиодр Иванович', 'Россия, Московская облать, г. Балашиха', to_date('01.01.2001','DD.MM.YYYY'), 'Россия, Московская облать, г. Балашиха, ул. Пушкина, д. 7', '4444 666666, выдан ОВД г. Клин, 10.01.2015');
	insert into clients values (4, 'Кузнецов Алексей Сергеевич', 'Россия, г. Казань', to_date('01.01.1995','DD.MM.YYYY'), 'Россия, г. Казань, ул. Ленина, д. 10', '1111 777777, выдан ОВД г. Казань, 20.02.2015');
    insert into clients values (5, 'Федоров Виктор Николаевич', 'Россия, г. Самара', to_date('01.01.1998','DD.MM.YYYY'), 'Россия, г. Самара, ул. Гагарина, д. 15', '3333 888888, выдан ОВД г. Самара, 15.03.2016');
    insert into clients values (6, 'Григорьев Сергей Олегович', 'Россия, г. Тюмень', to_date('01.01.1990','DD.MM.YYYY'), 'Россия, г. Тюмень, ул. Советская, д. 20', '2222 999999, выдан ОВД г. Тюмень, 10.04.2017');
	insert into clients values (7, 'Смирнов Андрей Петрович', 'Россия, г. Новосибирск', to_date('01.01.1992','DD.MM.YYYY'), 'Россия, г. Новосибирск, ул. Молодежная, д. 8', '1234 555555, выдан ОВД г. Новосибирск, 12.03.2014');
    insert into clients values (8, 'Васильев Дмитрий Александрович', 'Россия, г. Екатеринбург', to_date('01.01.1987','DD.MM.YYYY'), 'Россия, г. Екатеринбург, ул. Победы, д. 14', '5678 666666, выдан ОВД г. Екатеринбург, 18.06.2015');
    insert into clients values (9, 'Алексеева Мария Ивановна', 'Россия, г. Казань', to_date('01.01.1994','DD.MM.YYYY'), 'Россия, г. Казань, ул. Гоголя, д. 5', '1111 777777, выдан ОВД г. Казань, 20.10.2016');

	insert into products values (1, 1, 'Кредитный договор с Сидоровым И.П.', 1, to_date('01.06.2015','DD.MM.YYYY'), null);
	insert into products values (2, 2, 'Депозитный договор с Ивановым П.С.', 2, to_date('01.08.2017','DD.MM.YYYY'), null);
	insert into products values (3, 3, 'Карточный договор с Петровым С.И.', 3, to_date('01.08.2017','DD.MM.YYYY'), null);
	insert into products values (4, 1, 'Кредитный договор с Кузнецовым А.С.', 4, to_date('01.09.2016','DD.MM.YYYY'), null);
    insert into products values (5, 2, 'Депозитный договор с Федоровым В.Н.', 5, to_date('01.10.2018','DD.MM.YYYY'), null);
    insert into products values (6, 3, 'Карточный договор с Григорьевым С.О.', 6, to_date('01.11.2019','DD.MM.YYYY'), null);
	insert into products values (7, 1, 'Кредитный договор с Смирновым А.П.', 7, to_date('01.03.2020','DD.MM.YYYY'), null);
    insert into products values (8, 2, 'Депозитный договор с Васильевым Д.А.', 8, to_date('01.07.2020','DD.MM.YYYY'), null);
    insert into products values (9, 3, 'Карточный договор с Алексеевой М.И.', 9, to_date('01.09.2021','DD.MM.YYYY'), null);

	insert into accounts values (1, 'Кредитный счет для Сидоровым И.П.', -2000, 1, to_date('01.06.2015','DD.MM.YYYY'), null, 1, '45502810401020000022');
	insert into accounts values (2, 'Депозитный счет для Ивановым П.С.', 6000, 2, to_date('01.08.2017','DD.MM.YYYY'), null, 2, '42301810400000000001');
	insert into accounts values (3, 'Карточный счет для Петровым С.И.', 8000, 3, to_date('01.08.2017','DD.MM.YYYY'), null, 3, '40817810700000000001');
	insert into accounts values (4, 'Кредитный счет для Кузнецова А.С.', -3000, 4, to_date('01.09.2016','DD.MM.YYYY'), null, 4, '45502810401020000033');
    insert into accounts values (5, 'Депозитный счет для Федорова В.Н.', 7000, 5, to_date('01.10.2018','DD.MM.YYYY'), null, 5, '42301810400000000002');
    insert into accounts values (6, 'Карточный счет для Григорьева С.О.', 9000, 6, to_date('01.11.2019','DD.MM.YYYY'), null, 6, '40817810700000000002');
	insert into accounts values (7, 'Кредитный счет для Смирнова А.П.', -5000, 7, to_date('01.03.2020','DD.MM.YYYY'), null, 7, '45502810401020000044');
    insert into accounts values (8, 'Депозитный счет для Васильева Д.А.', 10000, 8, to_date('01.07.2020','DD.MM.YYYY'), null, 8, '42301810400000000003');
    insert into accounts values (9, 'Карточный счет для Алексеевой М.И.', 12000, 9, to_date('01.09.2021','DD.MM.YYYY'), null, 9, '40817810700000000003');

	insert into records values (1, 1, 5000.00, 1, to_date('01.06.2015','DD.MM.YYYY'));
	insert into records values (2, 0, 1000.00, 1, to_date('01.07.2015','DD.MM.YYYY'));
	insert into records values (3, 0, 2000.00, 1, to_date('01.08.2015','DD.MM.YYYY'));
	insert into records values (4, 0, 3000.00, 1, to_date('01.09.2015','DD.MM.YYYY'));
	insert into records values (5, 1, 5000.00, 1, to_date('01.10.2015','DD.MM.YYYY'));
	insert into records values (6, 0, 3000.00, 1, to_date('01.10.2015','DD.MM.YYYY'));
	insert into records values (7, 0, 10000.00, 2, to_date('01.08.2017','DD.MM.YYYY'));
	insert into records values (8, 1, 1000.00, 2, to_date('05.08.2017','DD.MM.YYYY'));
	insert into records values (9, 1, 2000.00, 2, to_date('21.09.2017','DD.MM.YYYY'));
	insert into records values (10, 1, 5000.00, 2, to_date('24.10.2017','DD.MM.YYYY'));
	insert into records values (11, 0, 6000.00, 2, to_date('26.11.2017','DD.MM.YYYY'));
	insert into records values (12, 0, 120000.00, 3, to_date('08.09.2017','DD.MM.YYYY'));
	insert into records values (13, 1, 1000.00, 3, to_date('05.10.2017','DD.MM.YYYY'));
	insert into records values (14, 1, 2000.00, 3, to_date('21.10.2017','DD.MM.YYYY'));
	insert into records values (15, 1, 5000.00, 3, to_date('24.10.2017','DD.MM.YYYY'));
	insert into records values (16, 1, 7000.00, 4, to_date('01.09.2016','DD.MM.YYYY'));
    insert into records values (17, 0, 3000.00, 4, to_date('01.10.2016','DD.MM.YYYY'));
    insert into records values (18, 1, 5000.00, 4, to_date('01.11.2016','DD.MM.YYYY'));
    insert into records values (19, 0, 8000.00, 5, to_date('01.10.2018','DD.MM.YYYY'));
    insert into records values (20, 1, 2000.00, 5, to_date('15.10.2018','DD.MM.YYYY'));
    insert into records values (21, 1, 1000.00, 5, to_date('25.11.2018','DD.MM.YYYY'));
    insert into records values (22, 1, 6000.00, 6, to_date('01.11.2019','DD.MM.YYYY'));
    insert into records values (23, 0, 4000.00, 6, to_date('10.11.2019','DD.MM.YYYY'));
    insert into records values (24, 1, 2000.00, 6, to_date('20.12.2019','DD.MM.YYYY'));
	insert into records values (25, 1, 2000.00, 7, to_date('05.03.2020','DD.MM.YYYY'));
    insert into records values (26, 0, 1000.00, 7, to_date('15.03.2020','DD.MM.YYYY'));
    insert into records values (27, 1, 3000.00, 7, to_date('25.03.2020','DD.MM.YYYY'));
    insert into records values (28, 0, 15000.00, 8, to_date('01.07.2020','DD.MM.YYYY'));
    insert into records values (29, 1, 2000.00, 8, to_date('10.07.2020','DD.MM.YYYY'));
    insert into records values (30, 1, 3000.00, 8, to_date('20.08.2020','DD.MM.YYYY'));
    insert into records values (31, 0, 20000.00, 9, to_date('01.09.2021','DD.MM.YYYY'));
    insert into records values (32, 1, 5000.00, 9, to_date('15.09.2021','DD.MM.YYYY'));
    insert into records values (33, 1, 7000.00, 9, to_date('25.09.2021','DD.MM.YYYY'));

END $$;