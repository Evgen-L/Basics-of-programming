PROGRAM Split(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN {Split}
  BEGIN {Копируем из INPUT нечёт. в Odds, а чёт в Evens}
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
  {Копируем Odds в OUTPUT}
  {Копируем Evens в OUTPUT}
END. {Split}
