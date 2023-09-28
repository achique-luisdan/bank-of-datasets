-- Separa por el punto (.), y selecciona la
-- segunda porción.
SELECT
    SPLIT_PART (characteristics, '.', 2)
FROM
    pets
WHERE
    breed = 'Golden Retriever';
