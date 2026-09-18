INSERT INTO Emp (Emp_No, Apellido, Oficio, Dir, Fecha_Alt, Salario, Comision, Dept_No)
VALUES (1800, 'Ortiz', 'vendedor', NULL, TO_DATE('03/03/2022', 'DD/MM/YYYY'), 5000, NULL, 2);

COMMIT;

SELECT * FROM Emp WHERE Emp_No = 1800;
