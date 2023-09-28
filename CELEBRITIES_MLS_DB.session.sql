DROP TABLE IF EXISTS temporal CASCADE;
CREATE TABLE temporal (
    id SERIAL,
    celebrity VARCHAR(120) NOT NULL,
    team VARCHAR(120),
    profession VARCHAR(120),
    CONSTRAINT temporal_pk PRIMARY KEY (id)
);

DROP TABLE IF EXISTS teams CASCADE;
CREATE TABLE teams (
    id SERIAL,
    name VARCHAR(120) NOT NULL,
    CONSTRAINT teams_pk PRIMARY KEY (id),
    CONSTRAINT teams_unique_name UNIQUE (name)
);

DROP TABLE IF EXISTS celebrities CASCADE;
CREATE TABLE celebrities (
    id SERIAL,
    full_name VARCHAR(120) NOT NULL,
    profession VARCHAR(255),
    CONSTRAINT celebrities_pk PRIMARY KEY (id)
);

DROP TABLE IF EXISTS investors CASCADE;
CREATE TABLE investors (
    team_id INTEGER NOT NULL,
    celebrity_id INTEGER NOT NULL,
    CONSTRAINT investors_pk PRIMARY KEY (team_id, celebrity_id ),
    CONSTRAINT investors_team_id  FOREIGN KEY (team_id) REFERENCES teams (id) ON DELETE CASCADE
);

--SELECT * FROM teams;

-- SELECT * FROM celebrities;

-- SELECT * FROM investors;

--SELECT *FROM temporal;



SELECT *FROM temporal;

-- INSERT INTO customers (name, email)
-- SELECT name, email
-- FROM (
--   SELECT id, name, email
--   FROM customers
--   WHERE country = 'Argentina'
-- );

SELECT
    celebrity,
    profession
FROM
    temporal;

-- Ejemplo: Uso de sub-consulta para inserción masiva
-- de registros en otra tabla.
INSERT INTO celebrities(full_name, profession)
SELECT celebrity AS full_name, profession
FROM (
    SELECT celebrity, profession
    FROM temporal
) AS only_celebrities;



 SELECT full_name, profession
    FROM celebrities
 WHERE 'Drew Carey' = full_name;

 SELECT full_name, profession
    FROM celebrities
 WHERE 'Drew Carey' = full_name;


DELETE FROM celebrities WHERE id = 2;


SELECT
    id,
    celebrity,
    profession
FROM
    temporal
WHERE 'Drew Carey' = celebrity;

DELETE FROM temporal WHERE id = 4 AND celebrity =  'Drew Carey' ;

SELECT
    full_name,
    celebrity
FROM
    celebrities AS ce
JOIN
    temporal AS te
    ON te.celebrity = ce.full_name;

-- Insertar solo algunas columnas de una sub-consulta en una tabla de destino.

INSERT INTO celebrities(full_name, profession)
SELECT celebrity AS full_name, profession
FROM (
    SELECT celebrity, profession
    FROM temporal
) as only_celebrities;

