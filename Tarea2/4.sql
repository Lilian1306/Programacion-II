INSERT INTO Emp (Emp_No, Apellido, Oficio, Dir, Fecha_Alt, Salario, Comision, Dept_No)
VALUES (1500, 'Perez', 'programador', NULL, TO_DATE('03/02/2022', 'DD/MM/YYYY'), 5000, NULL, 1);

COMMIT;

SELECT * FROM Emp WHERE Emp_No = 1500;
