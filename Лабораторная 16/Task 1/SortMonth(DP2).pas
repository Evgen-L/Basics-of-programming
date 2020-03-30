PROGRAM SortMonth(INPUT, OUTPUT);
USES DateIO;
VAR
  Mo1, Mo2: Month;
BEGIN 
  ReadMonth(INPUT, Mo1);
  ReadMonth(INPUT, Mo2);
  IF ((Mo1 = NoMonth) OR (Mo2 = NoMonth))
  THEN
    WRITE('¬ходные данные записаны неверно')
  ELSE
    IF (Mo1 < Mo2)
    THEN
      BEGIN
        WriteMonth(OUTPUT, Mo1);
        WRITE(' предшествует ');
        WriteMonth(OUTPUT, Mo2);
      END 
    ELSE
      IF (Mo1 > Mo2)
      THEN
        BEGIN
          WriteMonth(OUTPUT, Mo1);
          WRITE(' следует ');
          WriteMonth(OUTPUT, Mo2);
        END   
      ELSE
        BEGIN
          WRITE('ќба мес€ца ');
          WriteMonth(OUTPUT, Mo1);
        END;
  WRITELN                     
END.  
