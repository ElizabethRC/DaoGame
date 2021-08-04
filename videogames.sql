Create Database videogames;
use videogames;

CREATE TABLE category(
	idCategory INT AUTO_INCREMENT,
    nameCategory VARCHAR(120) NOT NULL,
    status TINYINT DEFAULT 1
    
     CONSTRAINT pk_Category_idCategory PRIMARY KEY(idCategory)
);
CREATE TABLE game(
	idGame INT AUTO_INCREMENT,
    nameGame VARCHAR(120) NOT NULL,
    Category_idCategory INT NOT NULL,
    date_premiere DATE NOT NULL,
    status TINYINT NOT NULL,
    imgGame longblob,
    
    
   CONSTRAINT pk_game_idGame PRIMARY KEY(idGame),
   CONSTRAINT fk_game_Category_idCategory FOREIGN KEY(Category_idCategory)REFERENCES Category (idCategory)
);

Drop Table category;
Drop Table game;
