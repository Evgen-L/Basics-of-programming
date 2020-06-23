PROGRAM PrimeNumbers(INPUT, OUTPUT);
CONST
  Max = 100;
  Min = 2;
TYPE
  SetOfNumbers = SET OF Min..Max;
VAR
  LotsOfNumbers: SetOfNumbers;
  Current, Number, Prime: INTEGER;
BEGIN
  LotsOfNumbers := [Min..Max];
  Current := Min;
  WHILE (Current <= Max)
  DO
    BEGIN
      Number := Current;
      IF Number IN LotsOfNumbers
      THEN
        BEGIN 
          Prime := Number;
          Number := Number + Prime;
          WHILE Number <= Max
          DO
            BEGIN
              LotsOfNumbers := LotsOfNumbers - [Number];  
              Number := Number + Prime;
            END;
        END; 
      Current := Current + 1; 
    END;
  Number := Min;
  WHILE Number <= Max
  DO
    BEGIN
      IF Number IN LotsOfNumbers
      THEN
        WRITE(Number, ' ');
      Number := Number + 1
    END;
END.
