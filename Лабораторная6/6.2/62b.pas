PROGRAM Split(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN {Split}
  BEGIN 
    REWRITE(Odds);
    REWRITE(Evens);
    Next := 'O';
    READ(INPUT, Ch);
    WHILE Ch <> '#'
    DO
      BEGIN {Копируем из INPUT нечёт. в Odds, а чёт в Evens(за четность отвечает Next по умолчанию равный нечет)}
        IF Next = 'O'
        THEN
          BEGIN
            WRITE(Odds, Ch);
            Next := 'E';
          END
        ELSE
          BEGIN
            WRITE(Evens, Ch);
            Next := 'O';
          END;
        READ(INPUT, Ch) 
      END;
    WRITELN(Odds, '#');
    WRITELN(Evens, '#');    
  END;
  BEGIN {Копируем Odds в OUTPUT}
    RESET(Odds);
    READ(Odds, Ch);
    WHILE Ch <> '#'
    DO
      BEGIN
        WRITE(OUTPUT, Ch);
        READ(Odds, Ch)
      END;
    WRITELN(OUTPUT)
  END;
  {Копируем Evens в OUTPUT}
END. {Split}
