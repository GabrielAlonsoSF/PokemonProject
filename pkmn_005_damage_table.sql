DROP TABLE damage_table;

CREATE TABLE damage_table AS
SELECT full_pokedex.id, full_pokedex.name,full_pokedex.type1,full_pokedex.type2,Bug,Dark,Dragon,Electric,Fairy,Fighting,Fire,Flying,Ghost,Grass,Ground,Ice,Normal,Poison,Psychic,Rock,Steel,Water
FROM full_pokedex
LEFT JOIN bug_power
    ON full_pokedex.name = bug_power.name
LEFT JOIN dark_power
    ON full_pokedex.name = dark_power.name
LEFT JOIN dragon_power
    ON full_pokedex.name = dragon_power.name
LEFT JOIN electric_power
    ON full_pokedex.name = electric_power.name
LEFT JOIN fairy_power
    ON full_pokedex.name = fairy_power.name
LEFT JOIN fighting_power
    ON full_pokedex.name = fighting_power.name
LEFT JOIN fire_power
    ON full_pokedex.name = fire_power.name
LEFT JOIN flying_power
    ON full_pokedex.name = flying_power.name
LEFT JOIN ghost_power
    ON full_pokedex.name = ghost_power.name
LEFT JOIN grass_power
    ON full_pokedex.name = grass_power.name
LEFT JOIN ground_power
    ON full_pokedex.name = ground_power.name
LEFT JOIN ice_power
    ON full_pokedex.name = ice_power.name
LEFT JOIN normal_power
    ON full_pokedex.name = normal_power.name
LEFT JOIN poison_power
    ON full_pokedex.name = poison_power.name
LEFT JOIN psychic_power
    ON full_pokedex.name = psychic_power.name
LEFT JOIN rock_power
    ON full_pokedex.name = rock_power.name
LEFT JOIN steel_power
    ON full_pokedex.name = steel_power.name
LEFT JOIN water_power
    ON full_pokedex.name = water_power.name;
    
SELECT * FROM damage_table;