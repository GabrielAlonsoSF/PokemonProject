DROP TABLE bug_power;

SET @type_enemy = 'Bug';
CREATE TABLE bug_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Bug
FROM full_pokedex;

DROP TABLE dark_power;

SET @type_enemy = 'Dark';
CREATE TABLE dark_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Dark
FROM full_pokedex;

DROP TABLE dragon_power;

SET @type_enemy = 'Dragon';
CREATE TABLE dragon_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Dragon
FROM full_pokedex;

DROP TABLE electric_power;

SET @type_enemy = 'Electric';
CREATE TABLE electric_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Electric
FROM full_pokedex;

DROP TABLE fairy_power;

SET @type_enemy = 'Fairy';
CREATE TABLE fairy_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Fairy
FROM full_pokedex;

DROP TABLE fighting_power;

SET @type_enemy = 'Fighting';
CREATE TABLE fighting_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Fighting
FROM full_pokedex;

DROP TABLE fire_power;

SET @type_enemy = 'Fire';
CREATE TABLE fire_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Fire
FROM full_pokedex;

DROP TABLE flying_power;

SET @type_enemy = 'Flying';
CREATE TABLE flying_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Flying
FROM full_pokedex;

DROP TABLE ghost_power;

SET @type_enemy = 'Ghost';
CREATE TABLE ghost_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Ghost
FROM full_pokedex;

DROP TABLE grass_power;

SET @type_enemy = 'Grass';
CREATE TABLE grass_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Grass
FROM full_pokedex;

DROP TABLE ground_power;

SET @type_enemy = 'Ground';
CREATE TABLE ground_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Ground
FROM full_pokedex;

DROP TABLE ice_power;

SET @type_enemy = 'Ice';
CREATE TABLE ice_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Ice
FROM full_pokedex;

DROP TABLE normal_power;

SET @type_enemy = 'Normal';
CREATE TABLE normal_power AS
SELECT name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Normal
FROM full_pokedex;

DROP TABLE poison_power;

SET @type_enemy = 'Poison';
CREATE TABLE poison_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Poison
FROM full_pokedex;

DROP TABLE psychic_power;

SET @type_enemy = 'Psychic';
CREATE TABLE psychic_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Psychic
FROM full_pokedex;

DROP TABLE rock_power;

SET @type_enemy = 'Rock';
CREATE TABLE rock_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Rock
FROM full_pokedex;

DROP TABLE steel_power;

SET @type_enemy = 'Steel';
CREATE TABLE steel_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Steel
FROM full_pokedex;

DROP TABLE water_power;

SET @type_enemy = 'Water';
CREATE TABLE water_power AS
SELECT id,name,type1,type2,
CASE
	WHEN weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 4
	WHEN less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0.25
    WHEN (weakness_1 LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 2    
    WHEN(weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 NOT LIKE CONCAT('%',@type_enemy,'%'))
    OR
    (weakness_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND weakness_2 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_1 NOT LIKE CONCAT('%',@type_enemy,'%') AND less_effective_2 LIKE CONCAT('%',@type_enemy,'%')) 
    THEN 0.5
    WHEN not_effective_1 LIKE CONCAT('%',@type_enemy,'%') OR not_effective_2 LIKE CONCAT('%',@type_enemy,'%') 
    THEN 0
    ELSE 1
END AS Water
FROM full_pokedex;