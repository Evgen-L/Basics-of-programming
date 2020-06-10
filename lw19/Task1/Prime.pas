PROGRAM Prime(INPUT, OUTPUT);
CONST
  Top = 100;
  Bottom = 2;
TYPE
  SetOfNumbers = SET  OF Bottom..Top;
VAR
  LotsOfNumbers: SetOfNumbers;
  Min, I, Prime: INTEGER;
BEGIN
  LotsOfNumbers := [Bottom..Top];
  Min := Bottom;
  WHILE (Min * Min <= Top)
  DO
    BEGIN
      I := Min;
      IF I IN LotsOfNumbers
      THEN
        BEGIN 
          Prime := I;
          I := I + Prime;
          WHILE I <= Top
          DO
            BEGIN
              LotsOfNumbers := LotsOfNumbers - [I];  
              I := I + Prime;
            END;
        END; 
      Min := Min + 1; 
    END;
  I := Bottom;
  WHILE I <= Top
  DO
    BEGIN
      IF I IN LotsOfNumbers
      THEN
        WRITE(I, ' ');
      I := I + 1
    END;
END.
