PROGRAM OneDigit(INPUT, OUTPUT);
VAR
  N: INTEGER;
PROCEDURE ReadNumber(VAR F: TEXT; VAR Number: INTEGER);
{Преобразует строку цифр из файла до первого нецифрового символа,  в соответствующее целое число N}
VAR
  D, Count: INTEGER;
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
{Считывает текущий символ из файла, если он - цифра, возвращает его 
 преобразуя в значение типа INTEGER. Если считанный символ не цифра
 возвращает -1}
VAR
  Ch: CHAR;
BEGIN{ReadDigit} 
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch); 
      IF Ch = '0' THEN D := 0 ELSE
      IF Ch = '1' THEN D := 1 ELSE
      IF Ch = '2' THEN D := 2 ELSE
      IF Ch = '3' THEN D := 3 ELSE
      IF Ch = '4' THEN D := 4 ELSE
      IF Ch = '5' THEN D := 5 ELSE
      IF Ch = '6' THEN D := 6 ELSE
      IF Ch = '7' THEN D := 7 ELSE
      IF Ch = '8' THEN D := 8 ELSE
      IF Ch = '9' THEN D := 9 
        ELSE D := -1
    END                
END;{ReadDigit}
BEGIN{ReadNumber}
  D := 0;
  Count := 0;
  WHILE NOT EOLN(F) AND (D <> -1)
  DO
    BEGIN
      ReadDigit(F, D); 
      Count := Count + 1;
      IF (( Number > (MAXINT DIV 10)) OR ((Number = MAXINT DIV 10) AND (D > 7))) AND (Count >= 10) 
      THEN
        BEGIN
          Number := -1;
          D := -1
        END
      ELSE
        IF D <> -1
        THEN
          BEGIN
            Number := Number * 10;
            Number := Number + D
          END;         
    END;
  WRITELN(Number)   
END;{ReadNumber}
BEGIN{OneDigit}
  N := 0;
  ReadNumber(INPUT, N);
  WRITELN('Преобразование: ', N)          
END.{OneDigit} 












