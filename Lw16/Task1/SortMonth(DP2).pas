PROGRAM SortMonth(INPUT, OUTPUT);
USES DateIO;
VAR
  Mo1, Mo2: Month;
BEGIN 
  ReadMonth(INPUT, Mo1);
  ReadMonth(INPUT, Mo2);
  IF ((Mo1 = NoMonth) OR (Mo2 = NoMonth))
  THEN
    WRITE('������� ������ �������� �������')
  ELSE
    IF (Mo1 < Mo2)
    THEN
      BEGIN
        WriteMonth(OUTPUT, Mo1);
        WRITE(' ������������ ');
        WriteMonth(OUTPUT, Mo2);
      END 
    ELSE
      IF (Mo1 > Mo2)
      THEN
        BEGIN
          WriteMonth(OUTPUT, Mo1);
          WRITE(' ������� ');
          WriteMonth(OUTPUT, Mo2);
        END   
      ELSE
        BEGIN
          WRITE('��� ������ ');
          WriteMonth(OUTPUT, Mo1);
        END;
  WRITELN                     
END.  
