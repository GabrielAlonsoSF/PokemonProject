USE Pokemon_Project;

DROP TABLE types;

CREATE TABLE types (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
type_1 VARCHAR(200) NOT NULL,
type_2 VARCHAR(200) NOT NULL,
weakness VARCHAR(200) NOT NULL,
strength VARCHAR(200),
less_effective VARCHAR(200),
not_effective VARCHAR(200)
);

INSERT INTO types (type_1, type_2, weakness, strength, less_effective, not_effective) VALUES
('Bug','Bug','Fire, Flying, Rock','Psychic, Dark, Grass','Fighting, Ground, Grass',''),
('Dark','Dark','Bug, Fighting, Fairy','Ghost, Psychic','Dark, Ghost',''),
('Dragon','Dragon','Dragon, Fairy, Ice','Dragon','Grass, Electric, Fire, Water',''), 
('Electric','Electric','Ground','Water, Flying','Electric, Flying, Steel',''),
('Fairy','Fairy','Poison, Steel','Dark, Dragon, Fighting','Fighting, Dark, Bug','Dragon'),
('Fighting','Fighting','Psychic, Flying, Fairy','Normal, Steel, Rock, Dark','Bug, Rock, Dark',''),
('Fire','Fire','Water, Rock, Ground', 'Grass, Bug, Ice, Steel','Bug, Grass, Fire, Ice, Steel',''),
('Flying','Flying','Electric, Ice, Rock', 'Fighting','Bug, Fighting, Grass', 'Ground'),
('Ghost','Ghost','Ghost, Dark','Ghost','Bug, Poison','Normal, Fighting'),
('Grass','Grass','Fire, Bug, Ice, Flying, Poison','Water, Ground, Rock','Water, Electric, Grass, Ground',''),
('Ground','Ground','Water, Grass, Ice','Electric','Poison, Ground',''),
('Ice','Ice','Rock, Fighting, Fire, Steel', 'Rock, Grass, Ground, Flying, Dragon','',''),
('Normal','Normal','Fighting','','','Ghost'),
('Poison','Poison','Psychic, Ground','Grass, Fairy','Grass, Poison, Fighting, Bug, Fairy',''),
('Psychic','Psychic','Dark, Ghost','Fighting, Poison','Psychic, Fighting',''),
('Rock','Rock','Water, Grass, Steel, Fighting, Ice','Fire, Flying, Bug','Normal, Poison, Fire, Flying',''),
('Steel','Steel','Fighting, Fire, Ground','Ice, Rock, Fairy','Normal, Flying, Ice, Grass, Psychic, Rock, Bug, Dragon, Steel, Fairy','Poison'),
('Water','Water','Grass, Electric', 'Rock, Ground, Fire','Water, Ice, Fire, Steel','');

SELECT type_1 AS type, weakness, less_effective, not_effective FROM types;