PROGRAM Format(INPUT, OUTPUT);
VAR
  Ch1, Ch2, Ch3, Ch4, Ch5, Ch6, Ch7, Ch8, Ch9, CheckBeg: CHAR;
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
  CheckBeg := 'Y';
  //IF NOT EOLN
  //THEN
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
              READ(Ch9); 
           END;                    
        IF (Ch5 <> ' '){выводим только символы, а в случае с запятой еще ставим пробел}
        THEN
          IF Ch5 = ','
          THEN 
            WRITE(Ch5, ' ')
          ELSE
            WRITE(Ch5);
        IF Ch9 = '''' {если кавычка то}
        THEN
          BEGIN
            WRITE(Ch6);
            WRITE(Ch7);
            WRITE(Ch8);
            WRITE(Ch9);
            READ(Ch9);
            WHILE Ch9 <> ''''
            DO
              BEGIN
                READ(Ch9);
                WRITE(Ch9);
              END
          END; 
        IF ((Ch1 = 'B') AND (Ch2 = 'E') AND (Ch3 = 'G') AND (Ch4 = 'I') AND (Ch5 = 'N') AND (Ch6 <> 'E') AND (Ch7 <> 'N') AND (Ch8 <> 'D') AND (Ch9 <> '.') AND (CheckBeg = 'Y')) OR ((Ch5 = ';') AND (Ch6 <> ';') AND (Ch6 <> 'E') AND (Ch7 <> 'N') AND (Ch8 <> 'D') AND (Ch9 <> '.')){После Бегина и ; делаем абзац и два пробела}  
        THEN
          BEGIN
            WRITELN;
            WRITE(' ', ' ');
            CheckBeg := 'N';
          END
        ELSE {а перед END. просто ставим абзац}
           IF (Ch6 = 'E') AND (Ch7 = 'N') AND (Ch8 = 'D') AND (Ch9 = '.') AND (EOLN)
           THEN
             WRITELN;
      END; {цикл}
  WRITE('END.')
END.{Format} 
  
    
