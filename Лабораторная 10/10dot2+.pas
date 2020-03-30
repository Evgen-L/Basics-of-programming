PROGRAM Format(INPUT, OUTPUT);
VAR
  Ch1, Ch2, Ch3, Ch4, Ch5, Ch6, Ch7, Ch8, Ch9, CheckBeg, Count: CHAR;
BEGIN  {Format}
  Ch1 := ' ';
  Ch2 := ' ';
  Ch3 := ' ';
  Ch4 := ' ';
  Ch5 := ' ';
  Ch6 := ' ';
  Ch7 := ' ';
  Ch8 := ' ';
  Ch9 := ' ';
  Count := '0';
  CheckBeg := 'Y';{эта переменная показывает можно ли поставить абзац после BEGIN..Как только поставим первый абзац, эта переменная изменится и условие для абзаца после BEGIN станет невыполнимым }
  IF NOT EOLN
  THEN
    BEGIN
      WHILE NOT EOLN
      DO
        BEGIN {цикл} {Вообще задумка такая: сначала выводим символ, потом проверяем, нужно ли сделать абзац или (абзац и несколько пробелов)}
          Ch1 := Ch2;
          Ch2 := Ch3;
          Ch3 := Ch4;
          Ch4 := Ch5;
          Ch5 := Ch6;
          Ch6 := Ch7;
          Ch7 := Ch8;
          Ch8 := Ch9;
          READ(Ch9);
          IF (Ch9 = ' '){избавляемся от пробелов} 
          THEN 
            BEGIN 
              WHILE Ch9 = ' ' 
              DO 
                READ(Ch9) 
             END;                    
          IF (Ch5 <> ' '){выводим только символы, а в случае с запятой еще ставим пробел}
          THEN
            IF Ch5 = ','
            THEN 
              WRITE(Ch5, ' ')
            ELSE
              WRITE(Ch5);
          IF Ch9 = ''''
          THEN
            BEGIN
              WHILE Count <> '3'
              DO
                BEGIN
                  Ch1 := Ch2;
                  Ch2 := Ch3;
                  Ch3 := Ch4;
                  Ch4 := Ch5;
                  Ch5 := Ch6;
                  Ch6 := Ch7;
                  Ch7 := Ch8;
                  WRITE(Ch5);
                  IF Count = '0'
                  THEN
                    Count := '1'
                  ELSE
                    IF Count = '1'
                    THEN
                      Count := '2'
                    ELSE
                      IF Count = '2'
                      THEN
                        Count := '3'
                END;
              Count := '0';  
              WRITE(Ch9);
              READ(Ch9);
              WHILE Ch9 <> ''''
              DO
                BEGIN
                  WRITE(Ch9);
                  READ(Ch9);
                END;
            END;
          IF ((Ch1 = 'B') AND (Ch2 = 'E') AND (Ch3 = 'G') AND (Ch4 = 'I') AND (Ch5 = 'N') AND (Ch6 <> 'E') AND (Ch7 <> 'N') AND (Ch8 <> 'D') AND (Ch9 <> '.') AND (CheckBeg = 'Y')) OR ((Ch5 = ';') AND (Ch6 <> ';') AND (Ch6 <> 'E') AND (Ch7 <> 'N') AND (Ch8 <> 'D') AND (Ch9 <> '.')){После Бегина и ; делаем абзац и два пробела. Если впервый раз считали BEGIN, то меняем значение CheckBeg, чтобы при нахождении BEGIN в комментах и кавычках не ставился абзац и 2 пробела}  
          THEN
            BEGIN
              WRITELN;
              WRITE(' ', ' ');
              CheckBeg := 'N'
            END
          ELSE {а перед END. просто ставим абзац(только в том случае, если это END. перед концом строки )}
             IF (Ch6 = 'E') AND (Ch7 = 'N') AND (Ch8 = 'D') AND (Ch9 = '.') AND (EOLN)
             THEN
               WRITELN
        END; {цикл}
      WRITE('END.')
    END;
END.{Format} 
  
    
