INSERT INTO Dept (Dept_No, DNombre, Loc) 
VALUES (2, 'ventas', 'escuintla');

COMMIT;

SELECT * FROM Dept WHERE Dept_No = 2;
