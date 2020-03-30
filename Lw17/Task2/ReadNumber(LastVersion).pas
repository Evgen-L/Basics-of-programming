PROGRAM OneDigit(INPUT, OUTPUT);
VAR
  Number: INTEGER;
PROCEDURE ReadNumber(VAR FromFile: TEXT; VAR Number: INTEGER);
{Преобразует строку цифр из файла до первого нецифрового символа,  в соответствующее целое число N}
VAR
  Digit, Count: INTEGER;
PROCEDURE ReadDigit(VAR FromFile: TEXT; VAR Digit: INTEGER);
{Считывает текущий символ из файла, если он - цифра, возвращает его 
 преобразуя в значение типа INTEGER. Если считанный символ не цифра
 возвращает -1}
VAR
  Ch: CHAR;
BEGIN{ReadDigit} 
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
        ELSE Digit := -1
    END                
END;{ReadDigit}
BEGIN{ReadNumber}
  Digit := 0;
  Count := 0;
  WHILE NOT EOLN(FromFile) AND (Digit <> -1)
  DO
    BEGIN
      ReadDigit(FromFile, Digit); 
      Count := Count + 1;
      IF (( Number > (MAXINT DIV 10)) OR ((Number = MAXINT DIV 10) AND (Digit > 7))) AND (Count >= 10) 
      THEN
        BEGIN
          Number := -1;
          Digit := -1
        END
      ELSE
        IF Digit <> -1
        THEN
          BEGIN
            Number := Number * 10;
            Number := Number + Digit
          END;         
    END;   
END;{ReadNumber}
BEGIN{OneDigit}
  Number := 0;
  ReadNumber(INPUT, Number);
  WRITELN('Преобразование: ', Number)          
END.{OneDigit} 












