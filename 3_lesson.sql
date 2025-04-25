CREATE TABLE linnad(
LinnID int PRIMARY KEY identity(1,1),
LinnNimi varchar(30) unique, 
elanikeAry int not null, 
maakond varchar (25),
);
--Protseduur, mis lisab (INSERT) tabelisse andend ja kohe näitab (SELECT) tabeli
create PROCEDURE lisalinn
@LinnNimi varchar(30),
@elanikeArv int,
@maakond varchar (25)
as
BEGIN
INSERT INTO linnad(linnNimi, elanikeArv, maakond)
VALUES( @LinnNimi, @elanikeAry, @maakond);
SELECT * FROM linnad;
END;
-- kutse
EXEC lisaLinn 'Keila', 1000,
-- protseduuri kustutamine
DROP Procedure lisaLinn;

﻿--protseduur, mis kustutab tabelist linnid järgi
﻿﻿CREATE PROCEDURE kustutaLinn 
@id int
﻿﻿BEGIN SELECT * FROM linnad; 
DELETE FROM Linnad WHERE linnID-@id; 
SELECT * FROM linnad; 
END

EXEC kustutaLinn 3;
EXEC kustutaLinn @id=3;

﻿--protseduur mis uuendab tabeli ja suurendab elanike arv 10%
﻿﻿CREATE Procedure uuendaLinn.
BEGIN
SELECT * FROM linnad;
UPDATE linnad SET elanikeArv=elanikeArv*1.1;
SELECT
* FROM linnad;
END
--kutse
EXEC uuendaLinn;
﻿@LinnNine varchar (39), 
@elanikeArv int,
﻿﻿@maakond varchar (25)
AS
BEGIN
INSERT INTO Linnad (LinnNimi, elanikeArv, maakond)
VALUES( @JinnNimi. @elanikeAry, Gnaakond):
SELECT * FROM linnad ORDER by elanikeArv;
END;
