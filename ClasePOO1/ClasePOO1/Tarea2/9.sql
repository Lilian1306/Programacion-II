INSERT INTO Hospital (Hospital_Cod, Nombre, Direccion, Telefono, Num_Cama)
VALUES (2, 'San Miguel', '3 calle', '1234567', 80);

COMMIT;

SELECT * FROM Hospital WHERE Hospital_Cod = 2;
