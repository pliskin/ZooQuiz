DROP TABLE IF EXISTS "Animal";
CREATE TABLE Animal (
	id INTEGER PRIMARY KEY AUTOINCREMENT   NOT NULL ,
	tipo INTEGER NOT NULL ,
	plumas BOOL NOT NULL ,
	leche BOOL NOT NULL ,
	aquatico BOOL NOT NULL ,
	dientes BOOL NOT NULL ,
	vertebrados BOOL NOT NULL ,
	respira BOOL NOT NULL ,
	npatas BOOL NOT NULL ,
	domestico BOOL NOT NULL 
);

DROP TABLE IF EXISTS "CategoriaAnimal";
CREATE TABLE CategoriaAnimal (
	idcategoria INTEGER PRIMARY KEY AUTOINCREMENT   NOT NULL ,
	nombrecategoria VARCHAR(45) NOT NULL ,
	descripcion VARCHAR(45) NOT NULL 
);

DROP TABLE IF EXISTS "Estadisticas";
CREATE TABLE Estadisticas (
	idestadistica INTEGER PRIMARY KEY  NOT NULL ,
	mamiferos INTEGER NOT NULL  DEFAULT (0) ,
	invertebrado INTEGER NOT NULL DEFAULT (0) ,
	insectos INTEGER NOT NULL DEFAULT (0) ,
	acuaticos INTEGER NOT NULL DEFAULT (0) ,
	aves INTEGER NOT NULL DEFAULT (0) ,
	anfibios INTEGER NOT NULL DEFAULT (0) ,
	galapagos INTEGER NOT NULL DEFAULT (0)
);

DROP TABLE IF EXISTS "RutaImagenCatego";
CREATE TABLE RutaImagenCatego (
	idruta INTEGER PRIMARY KEY AUTOINCREMENT   NOT NULL ,
	rutaimagen VARCHAR(255) NOT NULL ,
	categoriaanimal_idcategoria INTEGER NOT NULL ,
	FOREIGN KEY (categoriaanimal_idcategoria) REFERENCES CategoriaAnimal(idcategoria)
);

DROP TABLE IF EXISTS "Usuario";
CREATE TABLE "Usuario" ("idusuario" INTEGER PRIMARY KEY  NOT NULL ,"nombre" VARCHAR(45) NOT NULL ,"rutaimagen" VARCHAR(255) NOT NULL ,"tutorialvisto" BOOL NOT NULL  DEFAULT (0),"estadisticas_idestadistica" INTEGER );
