-- 5 Médicos en Hospital 1 (San Carlos)
INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (101, 1, 1, 'Gómez', 'MEDICO', 'M', 8500);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (102, 2, 1, 'Morales', 'MEDICO', 'M', 9000);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (103, 3, 1, 'López', 'MEDICO', 'N', 9500);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (104, 1, 1, 'Castillo', 'MEDICO', 'T', 8200);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (105, 2, 1, 'Reyes', 'MEDICO', 'M', 8800);

-- 5 Médicos en Hospital 2 (San Miguel) - Dr. Morales trabaja también aquí
INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (201, 1, 2, 'Pineda', 'MEDICO', 'M', 8600);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (1020, 2, 2, 'Morales', 'MEDICO', 'T', 9000);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (203, 3, 2, 'Vargas', 'MEDICO', 'N', 9700);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (204, 1, 2, 'Cruz', 'MEDICO', 'M', 8400);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (205, 2, 2, 'Ramos', 'MEDICO', 'T', 8900);

COMMIT;

-- Consulta para tomar la captura:
SELECT Hospital_Cod, Sala_Cod, Empleado_No, Apellido, Funcion, T, Salario 
FROM Plantilla 
WHERE Funcion = 'MEDICO' 
ORDER BY Hospital_Cod, Sala_Cod;
