PROGRAM Split(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN {Split}
  BEGIN {�������� �� INPUT �����. � Odds, � ��� � Evens}
    REWRITE(Odds);
    REWRITE(Evens);
    Next := 'O';
    READ(INPUT, Ch);
    WHILE Ch <> '#'
    DO
      BEGIN {�������� �� INPUT �����. � Odds, � ��� � Evens(�� �������� �������� Next �� ��������� ������ �����)}
        IF Next = 'O'
        THEN
          BEGIN
            WRITE(Odds, Ch);
            WRITE(OUTPUT, Next, ' ');
            Next := 'E';
          END
        ELSE
          BEGIN
            WRITE(Evens, Ch);
            WRITE(OUTPUT, Next, ' ');
            Next := 'O';
          END;
        READ(INPUT, Ch) 
      END;
    WRITELN(Odds, '#');
    WRITELN(Evens, '#');    
  END;
  {�������� Odds � OUTPUT}
  {�������� Evens � OUTPUT}
END. {Split}
