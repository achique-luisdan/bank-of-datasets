/* Vista para Consultar en JSON Secciones
de producto.*/
DROP VIEW IF EXISTS read_sections;
CREATE VIEW read_sections AS
    SELECT
        json_agg(se) AS sections
    FROM
        sections AS se;