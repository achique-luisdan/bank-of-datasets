/* 14) Filtrar solo los carros de empleados
 con el cargo Abogado o Abogada. */

SELECT
    c.license,
    c.brand,
    c.model,
    e.*
FROM
    cars AS c,
    employees AS e
WHERE
    c.employee_dni = e.dni
    AND e.role LIKE 'Abogad_';

/* 15) Filtrar solos carros de empleadas con
 el cargo de Diseñadora.
 Puede ser Diseñadora de moda,
 Diseñadora de interiores, Diseñadora UI o
 cualquier otra rama del Diseño */

SELECT
    c.license,
    c.brand,
    c.model,
    e.*
FROM
    cars AS c,
    employees AS e
WHERE
    c.employee_dni = e.dni
    AND e.role LIKE 'Diseñadora%';