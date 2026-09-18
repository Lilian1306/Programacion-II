-- Salas para el Hospital 1 (San Carlos)
INSERT INTO Sala (Sala_Cod, Hospital_Cod, Nombre, Num_Cama) VALUES (1, 1, 'emergencia', 15);
INSERT INTO Sala (Sala_Cod, Hospital_Cod, Nombre, Num_Cama) VALUES (2, 1, 'encamamiento', 25);
INSERT INTO Sala (Sala_Cod, Hospital_Cod, Nombre, Num_Cama) VALUES (3, 1, 'uci', 10);

-- Salas para el Hospital 2 (San Miguel)
INSERT INTO Sala (Sala_Cod, Hospital_Cod, Nombre, Num_Cama) VALUES (1, 2, 'emergencia', 20);
INSERT INTO Sala (Sala_Cod, Hospital_Cod, Nombre, Num_Cama) VALUES (2, 2, 'encamamiento', 45);
INSERT INTO Sala (Sala_Cod, Hospital_Cod, Nombre, Num_Cama) VALUES (3, 2, 'uci', 15);

COMMIT;

SELECT * FROM Sala ORDER BY Hospital_Cod, Sala_Cod;
