PROGRAM Stat(INPUT, OUTPUT);
VAR
  Number, Max, Min, Sum, CountNumbers: INTEGER;
  Error: BOOLEAN;
PROCEDURE ReadNumber(VAR FromFile: TEXT; VAR Number: INTEGER);
{Преобразует строку цифр из файла до первого нецифрового символа,  в соответствующее целое число N}
VAR
  Digit: INTEGER;
PROCEDURE ReadDigit(VAR FromFile: TEXT; VAR Digit: INTEGER);
{Считывает текущий символ из файла, если он - цифра, возвращает его 
 преобразуя в значение типа INTEGER. Если считанный символ не цифра
 возвращает -1}
VAR
  Ch: CHAR;
BEGIN{ReadDigit}
  Digit := -1;
  IF NOT EOLN(FromFile)
  THEN
    BEGIN
      READ(FromFile, Ch); 
      IF Ch = '0' THEN Digit := 0 ELSE
      IF Ch = '1' THEN Digit := 1 ELSE
      IF Ch = '2' THEN Digit := 2 ELSE
      IF Ch = '3' THEN Digit := 3 ELSE
      IF Ch = '4' THEN Digit := 4 ELSE
      IF Ch = '5' THEN Digit := 5 ELSE
      IF Ch = '6' THEN Digit := 6 ELSE
      IF Ch = '7' THEN Digit := 7 ELSE
      IF Ch = '8' THEN Digit := 8 ELSE
      IF Ch = '9' THEN Digit := 9 
    END                
END;{ReadDigit}
BEGIN{ReadNumber}
  Digit := 0;
  Number := 0;
  WHILE NOT EOLN(FromFile) AND (Number <> -1) AND (Digit <> -1)
  DO
    BEGIN
      ReadDigit(FromFile, Digit); 
      IF (( Number > (MAXINT DIV 10)) OR ((Number = MAXINT DIV 10) AND (Digit > MAXINT MOD 10))) AND (Digit <> -1) {AND DIGIT <> -1 НУЖЕН ДЛЯ ТАКИХ СЛУЧАЕВ 2147483647МЧМЧМ.  
      КОГДА ПРОГРАММА ДОЙДЕТ ДО 2147483647, ТО УСЛОВИЕ DIGIT <> -1 ПРОВЕРИТ ЕСЛИ СПРАВА СТОИТ ЦИФРА, ТО КОГДА ДОБАВИМ ЕЕ К НАШЕМУ ЧИСЛУ, У НАС БУДЕТ ПЕРЕБОР} 
      THEN                                                                                                        
        Number := -1
      ELSE
        IF Digit <> -1
        THEN
          Number := Number * 10 + Digit
        ELSE
          Digit := -1 
    END   
END;{ReadNumber}
BEGIN{Stat}
  Max := -MAXINT;
  Min := MAXINT;
  CountNumbers := 0;
  Sum := 0;
  Error := FALSE;
  IF NOT EOLN 
  THEN
    BEGIN
      WHILE (NOT EOLN) AND (NOT Error)
      DO
        BEGIN
          ReadNumber(INPUT, Number);
          IF Number > (MAXINT - SUM)
          THEN
            BEGIN
              WRITELN('У вас имеется слишком большое число');
              Error := TRUE;
            END
          ELSE
            BEGIN
              CountNumbers := CountNumbers + 1;
              Sum := Sum + Number; 
              IF Number < Min
              THEN
                Min := Number;
              IF Number > Max
              THEN
                Max := Number;
            END   
        END; 
      IF NOT(Error)
      THEN   
        WRITELN('Min: ', Min, ' Max: ', Max, ' Average: ', Sum DIV CountNumbers, '.', ((Sum * 100) DIV CountNumbers) MOD 100)
    END;           
END.{Stat} 
