-- DELETE FROM Teams;
-- DELETE FROM Players;
-- DELETE FROM TeamScore;

-- DROP TABLE IF EXISTS TeamScore;
-- DROP TABLE IF EXISTS Players;
-- DROP TABLE IF EXISTS Teams;

CREATE TABLE `Teams` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	TEXT NOT NULL
);

CREATE TABLE `Players` (
    `id`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `firstName`    TEXT NOT NULL,
    `lastName`    TEXT NOT NULL,
    `teamId` INTEGER NOT NULL,
    FOREIGN KEY(`teamId`) REFERENCES `Teams`(`id`)
);


CREATE TABLE `TeamScore` (
	`id`  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `teamId` INTEGER NOT NULL,
	`score`  TEXT NOT NULL,
	`timeStamp` TEXT NOT NULL,
    FOREIGN KEY(`teamId`) REFERENCES `Teams`(`id`)
);

DROP TABLE teamScores
 

INSERT INTO `Teams` VALUES (null, 'Golden Gryphons');
INSERT INTO `Teams` VALUES (null, 'Shrill Harpies');
INSERT INTO `Teams` VALUES (null, 'Green Wyverns');


INSERT INTO `Players` VALUES (null, "Madi", "Peper", 1);
INSERT INTO `Players` VALUES (null, "Leah", "Gwin", 1);
INSERT INTO `Players` VALUES (null, "Kimmy", "Bird", 1);
INSERT INTO `Players` VALUES (null, "Meg", "Ducharme", 2);
INSERT INTO `Players` VALUES (null, "Emily", "Lemmon", 2);
INSERT INTO `Players` VALUES (null, "Mo", "Silvera", 2);
INSERT INTO `Players` VALUES (null, "Bryan", "Nilsen", 3);
INSERT INTO `Players` VALUES (null, "Jenna", "Solis", 3);
INSERT INTO `Players` VALUES (null, "Ryan", "Tanay", 3);

INSERT INTO `TeamScore` VALUES (null, 1, 3, 1583873462376);
INSERT INTO `TeamScore` VALUES (null, 1, 2, 1583873462376);
INSERT INTO `TeamScore` VALUES (null, 1, 4, 1583873462376);
INSERT INTO `TeamScore` VALUES (null, 2, 1, 1583873462376);
INSERT INTO `TeamScore` VALUES (null, 2, 6, 1583873462376);
INSERT INTO `TeamScore` VALUES (null, 2, 3, 1583873462376);

 SELECT
    ts.id,
    ts.teamId,
    ts.score,
    ts.timeStamp,
    t.name team_name
    FROM TeamScore ts
    JOIN Teams t 
    ON t.id = ts.teamId
                      


Joining player because it has players AND has teamID to get team info name


                       SELECT
                            t.id,
                            t.name,
                            ts.teamId,
                            ts.score,
                            ts.timeStamp
                        FROM Teams t
                        JOIN TeamScore ts ON ts.teamId = t.id
                        """




 db_cursor.execute("""
            SELECT
                t.id,
                t.name
            FROM Teams t
            """)