-- Cree una tabla llamada “Mujeres” y traslade todos los enfermos de sexo femenino a la tabla Mujeres

CREATE TABLE MUJERES
(
Inscripcion number NOT NULL,
Apellido VARCHAR(50) NULL,
Direccion VARCHAR(50) NULL,
Fecha_Nac VARCHAR(50) NULL,
S VARCHAR(2) NULL,
id INT NULL
)
;

-- 2. Trasladar a las mujeres desde la tabla Enfermo asignando un id secuencial
INSERT INTO MUJERES (Inscripcion, Apellido, Direccion, Fecha_Nac, S, id)
SELECT Inscripcion, Apellido, Direccion, Fecha_Nac, S, ROWNUM
FROM Enfermo
WHERE S = 'F';

COMMIT;

-- 3. Consulta para verificar los datos y tomar la captura:
SELECT * FROM MUJERES;


-- Modifique la tabla mujeres y agregue como llave primaria el id;  
ALTER TABLE MUJERES ADD CONSTRAINT PK_MUJERES PRIMARY KEY (id);