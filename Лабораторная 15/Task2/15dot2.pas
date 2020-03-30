PROGRAM HowMuchReverse(INPUT, OUTPUT);
USES
  Count3;
VAR
  Ch1, Ch2, Ch3: CHAR;
BEGIN
  Start;
  IF NOT EOLN(INPUT)
  THEN
    READ(Ch2);
  IF NOT EOLN(INPUT)
  THEN
    READ(Ch3);    
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      Ch1 := Ch2;
      Ch2 := Ch3; 
      READ(Ch3); 
      IF ((Ch2 > Ch3) AND (Ch2 > Ch1)) OR ((Ch2 < Ch3) AND (Ch2 < Ch1))
        THEN
          Bump; 
    END;
  Value(Ch1, Ch2, Ch3);
  WRITELN('Количество реверсов: ', Ch1, Ch2, Ch3)    
END.   
