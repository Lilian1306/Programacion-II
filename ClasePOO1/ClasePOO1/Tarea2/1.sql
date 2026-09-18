INSERT INTO Dept (Dept_No, DNombre, Loc) 
VALUES (1, 'informática', 'escuintla');

COMMIT;

-- Consulta para tomar la captura de pantalla:
SELECT * FROM Dept WHERE Dept_No = 1;
