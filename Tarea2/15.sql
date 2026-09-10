CREATE TABLE EMPLEADOS
(
Emp_No number NOT NULL,
Apellido VARCHAR(50) NULL,
Oficio VARCHAR(50) NULL,
Dir INT NULL,
Fecha_Alt SMALLDATETIME NULL,
Salario number(9,2) NULL,
Comision number(9,2) NULL,
Dept_No number NULL
)

-- 2. Introducir todos los datos de la tabla EMP
INSERT INTO EMPLEADOS (Emp_No, Apellido, Oficio, Dir, Fecha_Alt, Salario, Comision, Dept_No)
SELECT Emp_No, Apellido, Oficio, Dir, Fecha_Alt, Salario, Comision, Dept_No
FROM Emp;

COMMIT;


-- 3. Consulta para verificar y tomar la captura:
SELECT * FROM EMPLEADOS;

