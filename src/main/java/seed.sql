INSERT INTO "user"(user_name, email, password)
VALUES
    ('Vladimir','kitkatorgnew@gmail.com','qwerty'),
    ('Dmitriy','dima02@email.ru','mypassword123'),
    ('McLoving','mclovingmovie@gmail.com','qwerty'),
    ('Sasha','alexandrrealandr@mail.ru','123456789'),
    ('Anton','antonaustirol@gmail.com','Anton@fT2k'),
    ('ILoveMyMom','studentemail2235@gmail.com','skfj45KF2!'),
    ('Pasha','pavel2000@outlook.com','ooooDaaaa@'),
    ('Dasha','dash02meOK200@outlook.com','dsfmbjWksQ1!'),
    ('Mihail','corpmanoutgood@outlook.com','daiMneSil!@'),
    ('Ekatze','kiratonelove001@outlook.com','834769540s');


INSERT INTO orders(data,user_id)
VALUES
    ('2025-08-01',1),
    ('2025-09-07',2),
    ('2025-08-25',3),
    ('2025-08-17',4),
    ('2025-08-9',5),
    ('2025-09-015',6),
    ('2025-09-29',7),
    ('2025-10-10',8),
    ('2025-08-27',9),
    ('2025-09-4',10);


INSERT INTO items(name, price, manufacturer, product_code)
VALUES
    ('chair',124.11, 'IKEA','IR3Ksdp2@'),
    ('lamp',10003.2, 'Kartell','biaORpI2@'),
    ('blanket',8593.44, 'IKEA','sdoBirp53@'),
    ('dresser',5500.99, 'Ashley HomeStore','sdbwjqQsW@'),
    ('lamp',3259.4, 'Ashley HomeStore','SdmDkse02@'),
    ('Shelf',1000.00, 'IKEA','SkfBUrS(@'),
    ('chair',901.03, 'Kartell','SDJvmd10@'),
    ('armchair',3485.22, 'American Signature','Vmbmdsl78@'),
    ('shelf',1799.99, 'American Signature','fdbjGkwS)2@'),
    ('lamp',9999.82, 'Ashley HomeStore','sdoBirp53@'),
    ('wardrobe',7535.43, 'IKEA','sdoBirp53@'),
    ('bookshelf',7900.00, 'Kartell','sdoBirp53@'),
    ('lamp',3285.36, 'Kartell','SAvmbkSlw)@'),
    ('tv-stand',2956.20, 'Ashley HomeStore','SWATfudie@'),
    ('dresser',6582.70, 'American Signature','sdwQ1@'),
    ('wardrobe',6019.90, 'IKEA','SDovuerNW998@');


INSERT INTO order_items(order_id, items_id, quantity)
VALUES
    (1,17, 510),
    (2,9, 5),
    (3,13, 8500),
    (4,6, 154),
    (5,19, 80),
    (6,21, 42),
    (7,14, 770),
    (8,7, 1500),
    (9,21, 450),
    (10,10, 820);


INSERT INTO role(id,name) VALUES(1,'MEMBER'),(2,'ADMIN')