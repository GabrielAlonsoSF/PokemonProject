DROP TABLE pokedex_1;

CREATE TABLE pokedex_1
AS SELECT 
    pokedex.id,
    name,
	pokedex.type_1 AS type1,
	pokedex.type_2 AS type2,
	weakness AS weakness_1,
	less_effective AS less_effective_1,
	not_effective AS not_effective_1 
FROM pokedex
LEFT JOIN types ON
	(types.type_1 = pokedex.type_1)
GROUP BY pokedex.name
ORDER BY pokedex.id;

DROP TABLE pokedex_2;

CREATE TABLE pokedex_2
AS SELECT 
    name AS name_2,
	pokedex.type_1,
	pokedex.type_2,
	IFNULL(weakness,'') AS weakness_2,
	IFNULL(less_effective,'') AS less_effective_2,
    IFNULL(not_effective,'') AS not_effective_2
FROM pokedex
LEFT JOIN types ON
	(types.type_1 = pokedex.type_2)
GROUP BY pokedex.name
ORDER BY pokedex.id;

DROP TABLE full_pokedex;

CREATE TABLE full_pokedex AS
SELECT id,name,type1,type2,weakness_1,weakness_2,less_effective_1,less_effective_2,not_effective_1,not_effective_2
FROM pokedex_1
INNER JOIN pokedex_2 ON (pokedex_1.name = pokedex_2.name_2);

SELECT * FROM full_pokedex;