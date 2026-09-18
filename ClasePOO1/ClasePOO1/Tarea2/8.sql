INSERT INTO Hospital (Hospital_Cod, Nombre, Direccion, Telefono, Num_Cama)
VALUES (1, 'San Carlos', '1 calle', '1234567', 50);

COMMIT;

SELECT * FROM Hospital WHERE Hospital_Cod = 1;
