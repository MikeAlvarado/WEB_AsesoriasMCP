CREATE TABLE Post (
    	
	id VARCHAR(20) NOT NULL PRIMARY KEY,
    	
	nombre VARCHAR(50),

	fecha DATE,

	titulo VARCHAR(50),

	content VARCHAR(2000)
);


CREATE TABLE Reply (
	
	id VARCHAR(20) NOT NULL PRIMARY KEY,
	
	idpost VARCHAR(20) NOT NULL,
	
	nombre VARCHAR(50) NOT NULL,
	
	fecha DATE,
	
	comentario VARCHAR(2000),

	FOREIGN KEY(idpost) references Post(id)
);