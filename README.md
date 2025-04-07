## ADMETÜÜPID
1. **teksti või sümboolid** - VARCHAR(50), CHAR(3), TEXT
Näited: nimi, nimetus, telNumber, isikukood - varchar(11)
2. **Arvulised** - int, bigint, amsllint, decimal(5,2) -5 kokku, 2- peale komat
Näited: vanus, palk, temperatuur, kaal, pikkus, jne
3. **Kuupäeva** - DATE, TIME, date/time
4. **loogilised** - bit, bool, boolean

  ## Piirangud - ограничения##
  1. primary key - ei anna võimalust lisada topelt väärtused
  2. UNIQUE - unijaaksus
  3. NOT NULL ei lubada tühjad väärtused
  4. Foreign key - saab kasutada ainult teise tabeli väärtused
  5. CHECK - saab sisetabaainult check määratud väärtused CHECK(mees, naine)
