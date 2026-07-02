INSERT INTO cars (vehicle_identification_VIN, manufacturer, model, year, color)
VALUES ('K096I98581DHSNUP', 'Toyota', 'RAV4', '2008', 'black'),
       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2012', 'white'),
       ('DAM41UDN3CHU2WVF', 'Volvo', 'V6', '2015','red');

INSERT INTO customers (customer_ID, name, phone_number, email, address, city, state_province, country, zip_code)
VALUES ('10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
	   ('20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
       ('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');
       
INSERT INTO salesperson (staff_ID, name, store)
VALUES ('00001', 'Petey Cruiser', 'Madrid'),
       ('00002', 'Anna Sthesia', 'Barcelona'),
       ('00003', 'Paul Molive','Berlin'),
       ('00004', 'Gail Forcewind','Paris'),
       ('00005', 'Paige Turner','Mimia'),
       ('00006', 'Bob Frapples','México City'),
       ('00007', 'Walter Melon','Amsterdan'),
       ('00008', 'Shonda Leer','São Paulo');     
       
INSERT INTO invoices (invoice_number, date, car, customer, salesperson)
VALUES ('852399038', '2018-08-22', '1', '1', '3'),
       ('731166526', '2018-12-31', '3', '3', '5'),
       ('271135104', '2019-01-22', '2', '2','7');
       
       