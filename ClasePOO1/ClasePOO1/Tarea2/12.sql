-- Cree 5 enfermeros por cada hospital en la tabla plantilla;

-- 5 Enfermeros en Hospital 1 (San Carlos)
INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (106, 1, 1, 'Alvarado', 'ENFERMERO', 'M', 4500);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (107, 2, 1, 'Sosa', 'ENFERMERO', 'T', 4500);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (108, 3, 1, 'García', 'ENFERMERO', 'N', 4800);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (109, 1, 1, 'Mendoza', 'ENFERMERO', 'M', 4500);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (110, 2, 1, 'Navarro', 'ENFERMERO', 'T', 4500);

-- 5 Enfermeros en Hospital 2 (San Miguel)
INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (206, 1, 2, 'Fuentes', 'ENFERMERO', 'M', 4600);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (207, 2, 2, 'Hernández', 'ENFERMERO', 'T', 4600);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (208, 3, 2, 'Flores', 'ENFERMERO', 'N', 4900);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (209, 1, 2, 'Estrada', 'ENFERMERO', 'M', 4600);

INSERT INTO Plantilla (Empleado_No, Sala_Cod, Hospital_Cod, Apellido, Funcion, T, Salario) 
VALUES (210, 2, 2, 'Chávez', 'ENFERMERO', 'N', 4900);

COMMIT;

-- Consulta para tomar la captura:
SELECT Hospital_Cod, Sala_Cod, Empleado_No, Apellido, Funcion, T, Salario 
FROM Plantilla 
WHERE Funcion = 'ENFERMERO' 
ORDER BY Hospital_Cod, Sala_Cod;
