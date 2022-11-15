# Borrar
DROP TABLE ALUMNO_MATRICULADO_MODULO;
DROP TABLE MODULO;
DROP TABLE PROFESOR;
DROP TABLE ALUMNO;

CREATE TABLE PROFESOR
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
	DNI CHAR(9) NOT NULL,
	Nombre VARCHAR(70) NOT NULL,
	Email VARCHAR(255) NOT NULL,
	Direccion VARCHAR(255),
	Telefono VARCHAR(15) NOT NULL,
	Salario_Euros FLOAT,
	UNIQUE(DNI, Email, Telefono)
);

CREATE TABLE MODULO
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
	Codigo INT NOT NULL,
	Nombre VARCHAR(70) NOT NULL,
	HORAS_ANUALES INT,
	ID_PROFESOR INT,
	FOREIGN KEY (ID_PROFESOR) REFERENCES PROFESOR(ID) ON DELETE CASCADE
);

CREATE TABLE ALUMNO
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
	DNI CHAR(9) NOT NULL,
	Nombre VARCHAR(70) NOT NULL,
	Apellidos VARCHAR(70),
	Fecha_Nacimiento VARCHAR(10),
	Telefono VARCHAR(15) NOT NULL,
	UNIQUE(DNI, Nombre, Telefono)
);

CREATE TABLE ALUMNO_MATRICULADO_MODULO
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
	ID_ALUMNO INT,
	ID_MODULO INT,
	FOREIGN KEY (ID_ALUMNO) REFERENCES ALUMNO(ID) ON DELETE CASCADE,
	FOREIGN KEY (ID_MODULO) REFERENCES MODULO(ID) ON DELETE CASCADE
);

INSERT INTO Profesor (`DNI`,`Nombre`,`Email`,`Direccion`,`Telefono`,`Salario_Euros`)
VALUES
  ("45368788C","Ingrid Mann","fringilla.purus.mauris@yahoo.edu","459-5218 Urna. Road","(+34) 422348631",1437),
  ("86526723T","Brynn Shaw","sem@aol.ca","965-8409 Risus. Street","(+34) 614872997",1339),
  ("35625387N","Gannon Kaufman","semper.egestas.urna@outlook.com","P.O. Box 422, 3566 Sed St.","(+34) 378745962",1357),
  ("83633765W","Daphne Rhodes","convallis@icloud.net","923-6238 Enim. Avenue","(+34) 231841472",1360),
  ("93767523I","Alfonso Lara","odio.sagittis@yahoo.edu","1568 Mollis. Rd.","(+34) 387539382",1491);

INSERT INTO MODULO (`Codigo`,`Nombre`,`Horas_Anuales`,`ID_PROFESOR`)
VALUES
  ("24887","Emma",780,1),
  ("21272","Vernon",882,5),
  ("49746","Mufutau",833,3),
  ("65457","Fay",904,3),
  ("63142","Lev",854,4),
  ("71975","Brenden",885,2),
  ("99767","Emerson",897,2),
  ("46254","Jamalia",829,1),
  ("36528","Adrienne",970,5),
  ("77841","Lawrence",846,3);

INSERT INTO ALUMNO (`DNI`,`NOMBRE`,`APELLIDOS`,`Fecha_Nacimiento`,`Telefono`)
VALUES
  ("53545144U","Dara","Bray","2014-10-15","+34 609259696"),
  ("27656677C","Nigel","Miranda","2015-02-06","+34 648872152"),
  ("66727362Q","Josiah","Lara","2011-03-26","+34 662655922"),
  ("76635972J","Brody","Cochran","2016-01-09","+34 641415227"),
  ("37643333V","Ciara","Holt","2016-05-19","+34 627755976"),
  ("27988284W","Conan","Cochran","2016-05-16","+34 644448424"),
  ("82226322C","Sigourney","Gomez","2014-02-24","+34 637271419"),
  ("33955426P","Alfreda","Terrell","2012-06-02","+34 685708720"),
  ("61718324N","Nigel","Ewing","2014-07-04","+34 636203700"),
  ("28853593X","Ronan","Higgins","2016-11-03","+34 618170219"),
  ("14133871F","Tyler","Romero","2009-02-28","+34 619492308"),
  ("46722394P","Jorden","Melton","2015-06-24","+34 694459821"),
  ("44757538S","Arthur","Robbins","2016-08-02","+34 644174438"),
  ("83953447O","Cora","Hardin","2011-04-29","+34 693747717"),
  ("72567223S","Lila","Scott","2014-01-15","+34 674392133"),
  ("44856198H","Vladimir","Woods","2014-03-27","+34 641247713"),
  ("99767766D","Aquila","Brooks","2012-02-15","+34 645109227"),
  ("23575657Y","Farrah","Griffin","2016-06-09","+34 696621541"),
  ("81857599V","Yoshi","Travis","2010-12-29","+34 605441266"),
  ("79122584H","Reed","Booth","2014-05-16","+34 608181733"),
  ("55344374I","Griffith","Hardin","2010-01-16","+34 637862535"),
  ("55341241B","Walter","Buckley","2014-01-23","+34 614570282"),
  ("84846245N","Kay","Haynes","2016-12-10","+34 623438186"),
  ("66953773U","Neville","Becker","2009-11-14","+34 643726565"),
  ("67463363H","Selma","Manning","2013-10-18","+34 697640425"),
  ("68386243Y","Violet","Logan","2010-11-07","+34 645137812"),
  ("12644231W","Aphrodite","Chen","2012-09-17","+34 616447872"),
  ("28643864D","Britanni","Powell","2013-09-11","+34 653371423"),
  ("97537858N","Evangeline","Padilla","2017-03-19","+34 622921621"),
  ("18477368J","Imani","Harrell","2008-08-02","+34 678915342"),
  ("64931323K","Fleur","Klein","2008-05-03","+34 693623875"),
  ("67341376I","Channing","Sherman","2016-06-26","+34 690036442"),
  ("97572289Q","Garrett","Wall","2014-01-28","+34 647835157"),
  ("62498927W","Jeremy","Frank","2010-08-26","+34 643073724"),
  ("55986681S","Malachi","Browning","2010-05-23","+34 676278031"),
  ("84326447Y","Brenna","Dickson","2009-04-03","+34 629737236"),
  ("75334387P","Vivien","Bond","2017-01-04","+34 603733632"),
  ("78144367L","Autumn","Sexton","2014-07-12","+34 612767916"),
  ("23323169U","Caleb","Ward","2016-07-02","+34 614137598"),
  ("28156222X","Vance","Guerra","2013-09-01","+34 666802185"),
  ("82622835L","Aline","Griffin","2016-10-17","+34 629534610"),
  ("21181357T","Alan","Rios","2016-09-29","+34 645528801"),
  ("82425661H","Baxter","Levy","2008-09-30","+34 645788722"),
  ("33546688C","Andrew","Tucker","2011-01-25","+34 669110423"),
  ("36328867K","Eve","Hebert","2015-09-06","+34 624720384"),
  ("23849712Q","Bruce","Burch","2011-01-10","+34 671687913"),
  ("66278946V","Veda","Nixon","2016-11-20","+34 611620448"),
  ("23871394Y","Jenna","Noel","2015-10-08","+34 654288612"),
  ("25346276P","Elizabeth","Jordan","2011-03-08","+34 613773677"),
  ("84223582N","Christopher","Pennington","2011-07-04","+34 693862062"),
  ("88465382O","Wanda","Jennings","2008-09-14","+34 672482575"),
  ("62275451X","Susan","Mcdowell","2011-04-11","+34 685018745"),
  ("47368229I","Warren","Chaney","2011-04-29","+34 645182242"),
  ("27649871J","Malik","Fuentes","2016-07-25","+34 668847746"),
  ("22125468O","Ruth","Robertson","2010-02-15","+34 659807632"),
  ("64794944F","William","Head","2009-12-01","+34 692854875"),
  ("68228287P","Ivy","Terry","2009-05-31","+34 669879575"),
  ("83732429F","Lucian","Maynard","2010-05-14","+34 656386707"),
  ("27362696N","Kadeem","Navarro","2014-01-05","+34 661541162"),
  ("86333418T","Jackson","Frost","2011-08-28","+34 633666017");

INSERT INTO ALUMNO_MATRICULADO_MODULO (`ID_ALUMNO`,`ID_MODULO`)
VALUES
  (1,6),
  (2,3),
  (3,8),
  (4,5),
  (5,10),
  (6,8),
  (7,3),
  (8,6),
  (9,8),
  (10,7),
  (11,9),
  (12,6),
  (13,9),
  (14,2),
  (15,6),
  (16,6),
  (17,3),
  (18,10),
  (19,7),
  (20,8),
  (21,2),
  (22,6),
  (23,3),
  (24,4),
  (25,8),
  (26,4),
  (27,6),
  (28,6),
  (29,2),
  (30,6),
  (31,7),
  (32,4),
  (33,2),
  (34,6),
  (35,7),
  (36,9),
  (37,9),
  (38,8),
  (39,3),
  (40,4),
  (41,6),
  (42,2),
  (43,5),
  (44,3),
  (45,3),
  (46,8),
  (47,7),
  (48,6),
  (49,3),
  (50,7),
  (51,2),
  (52,1),
  (53,2),
  (54,7),
  (55,2),
  (56,3),
  (57,2),
  (58,4),
  (59,2),
  (60,4);

# View ejercicio de listar nombre profesor con nombre modulo y cantidad alumnos en el
CREATE VIEW listado_profesores_modulos AS
	SELECT
		MODULO.Nombre AS `Modulo`,
		PROFESOR.Nombre AS `Profesor`,
		COUNT(ALUMNO_MATRICULADO_MODULO.ID) AS `Alumnos matriculados`
	FROM MODULO
	LEFT JOIN PROFESOR ON MODULO.ID = PROFESOR.ID
	LEFT JOIN ALUMNO_MATRICULADO_MODULO ON MODULO.ID = ALUMNO_MATRICULADO_MODULO.ID_MODULO
	GROUP BY MODULO.ID;

# View para listar alumnos
CREATE VIEW listado_alumnos AS
	SELECT
		*
	FROM ALUMNO;

# View con la edad de los alumnos
CREATE VIEW edad_alumnos AS
SELECT
	ALUMNO.ID,
	ALUMNO.DNI,
	ALUMNO.Nombre,
	ALUMNO.Apellidos,
	ALUMNO.Fecha_Nacimiento,
	FLOOR(DATEDIFF(CURRENT_DATE(), ALUMNO.Fecha_Nacimiento)/365) AS `Edad`,
	ALUMNO.Telefono
FROM ALUMNO;