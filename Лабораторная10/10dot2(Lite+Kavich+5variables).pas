PROGRAM Format(INPUT, OUTPUT);
VAR
  Ch1, Ch2, Ch3, Ch4, Ch5, CheckBeg, CheckKavich9, CheckKavich5: CHAR;
BEGIN  {Format}
  Ch1 := ' ';
  Ch2 := ' ';
  Ch3 := ' ';
  Ch4 := ' ';
  Ch5 := ' ';
  CheckBeg := 'Y';{эта переменная показывает можно ли поставить абзац после BEGIN..Как только поставим первый абзац, эта переменная изменится и условие для абзаца после BEGIN станет невыполнимым }
  CheckKavich9 := 'N';{переменная показывает, находится ли Ch9 внутри кавычек}
  CheckKavich5 := 'N';{переменная показывает, находится ли Ch5 внутри кавычек}
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
          READ(Ch5);
          IF (Ch5 = ' ') AND (CheckKavich9 = 'N'){избавляемся от пробелов в тех случаях, когда находимся не в кавычках} 
          THEN 
            BEGIN 
              WHILE Ch5 = ' ' 
              DO 
                READ(Ch5) 
             END;    
          IF Ch5 = ''''{проверяем, в кавычках Ch9 или нет}
          THEN
            IF CheckKavich9 = 'N'
            THEN
              CheckKavich9 := 'Y'
            ELSE
              CheckKavich9 := 'N'; 
          IF Ch5 = ''''{проверяем, в кавычках Ch5 или нет}
          THEN
            IF CheckKavich5 = 'N'
            THEN
              CheckKavich5 := 'Y'
            ELSE
              CheckKavich5 := 'N';                    
          IF (Ch5 <> ' ') AND (CheckKavich5 = 'N'){выводим только символы(если не в кавычках), а в случае с запятой еще ставим пробел}
          THEN
            IF Ch5 = ','
            THEN 
              WRITE(Ch5, ' ')
            ELSE
              WRITE(Ch5)
          ELSE
            IF CheckKavich5 = 'Y'
            THEN
              WRITE(Ch5);    
          IF ((Ch1 = 'B') AND (Ch2 = 'E') AND (Ch3 = 'G') AND (Ch4 = 'I') AND (Ch5 = 'N') AND (CheckBeg = 'Y')) OR ((Ch4 = ';') AND (Ch5 <> ';') AND (CheckKavich5 = 'N') AND (Ch6 <> 'E') AND (Ch7 <> 'N') AND (Ch8 <> 'D') AND (Ch9 <> '.')){После Бегина и ; делаем абзац и два пробела. Если впервый раз считали BEGIN, то меняем значение CheckBeg, чтобы при нахождении BEGIN в комментах и кавычках не ставился абзац и 2 пробела}  
          THEN
            BEGIN
              WRITELN;
              WRITE(' ', ' ');
              Ch1 := ' ';
              Ch2 := ' ';
              Ch3 := ' ';
              Ch4 := ' ';
              Ch5 := ' ';
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
  
    
