-- Assuming we have imported the metal_bands.sql dump and have a table named 'bands'
-- The 'bands' table contains columns such as band_name, formed (year formed), split (year split or NULL if still active), and style (main style of the band).

-- SQL Script
SELECT
    band_name,
    CASE
        WHEN split IS NULL THEN 2022 - formed
        ELSE split - formed
    END AS lifespan
FROM
    bands
WHERE
    style = 'Glam rock'
ORDER BY
    lifespan DESC;

