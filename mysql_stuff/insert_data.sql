INSERT INTO `Mitarbeiter`(`mGruppe`, `VName`, `NName`) 
VALUES(1,"Horst" ,"Schlemmer"),
		(1, "Dieter" ,"Braun"), 
		(1, "Mario" ,"Thomsen"),
		(1, "Kevin" ,"Kevinson"),
		(1, "Herbert" ,"Müller"),
		(1, "Frauke" ,"Ludowig"),
		(1, "Achmed" ,"Mhemmed"),
		(1, "Kay-Uwe" ,"Pendler"),
		(1, "Tom" ,"Cruiz"),
		(1, "Pamela" ,"Anderson"),
		(1, "Joschka" ,"Fischer"),
		(1, "Frauke" ,"Petri"),
		(2, "Angela" ,"Merkel"),
		(2, "Wladimir" ,"Putin");


INSERT INTO `Zubehör` (`Anzahl`, `Bezeichnung`)
VALUES (1,"Schwert 40 cm"),
	    (1,"Schwert 60 cm"),
	    (2,"Kombiedüse mit Teleskoprohr"),
	    (2,"Schiene 2000 cm"),
	    (12,"Schraubzwingen für Schiene"),
	    (2,"Schiene 1200 cm"),
	    (2,"Schiene 1600 cm"),
	    (1,"Absaughaube"),
	    (2,"Radius Anschlag"),
	    (2,"Teller 125 mm");

INSERT INTO `Werkzeug`(`Bezeichnung`, `wGruppe`, `Anzahl`)
VALUES ("Torx 20 Schraubenzieher Lang",4,5),
	   ("Festool TS 55 R",2,1),
	   ("Festool TS 55 R",2,1),
	   ("Festool CARVEX PS 420",2,1),
	   ("Festool CARVEX PS 420",2,1),
	   ("Festool OF 1010",1,1),
	   ("Festool OF 1010",1,1),
	   ("MIRKA DEROS 680 CV",1,1),
	   ("MIRKA DEROS 680 CV",1,1),
	   ("MIRKA Staubsauger 915 M",6,1),
	   ("MIRKA Staubsauger 915 M",6,1),
	   ("MIRKA Staubsauger 915 M",6,1),
	   ("MIRKA Staubsauger 915 M",6,1),
	   ("Kugelkopf Hammer 500G",3,10),
	   ("Kugelkopf Hammer 1000G",3,5),
	   ("Schlosser Hammer 500G",3,10),
	   ("Schlosser Hammer 1000G",3,5),
	   ("Japan Säge Typ Ryoba",2,10),
	   ("Japan Säge Typ Kataba",2,8),
	   ("Japan Säge Typ Dozuki",2,5),
	   ("Kettensäge Benzin",2,1);

INSERT INTO `Projekt`(`Ort`, `Notiz`)
VALUES("Haupthalle","12m Kreuzeryacht"),
	("Metallhalle","Motor mit Schaden"),
	("Mastenbank","Mastbruch");


INSERT INTO `Lagerort`(`Regal`, `Fach`) 
VALUES(1,1),
	 	(1,2),
		(1,3),
		(1,4),
		(2,1),
		(2,2),
		(3,1), 
		(3,2), 
		(3,3),
		(4,4),
		(4,1),
		(4,2),
		(5,1),
		(5,2),
		(5,3),
		(6,4),
		(6,1),
		(6,2);
	
