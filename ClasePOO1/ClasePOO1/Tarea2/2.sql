INSERT INTO Emp (Emp_No, Apellido, Oficio, Dir, Fecha_Alt, Salario, Comision, Dept_No)
VALUES (8596, 'Martínez', 'programador', NULL, TO_DATE('07/02/2022', 'DD/MM/YYYY'), 7000, NULL, 1);

COMMIT;

SELECT * FROM Emp WHERE Emp_No = 8596;
