PROGRAM SumOfDigits(INPUT, OUTPUT);
VAR
  Digit, Sum: INTEGER;
PROCEDURE ReadDigit(VAR FromFile: TEXT; VAR Digit: INTEGER);
{Считывает текущий символ из файла, если он - цифра, возвращает его 
 преобразуя в значение типа INTEGER. Если считанный символ не цифра
 возвращает -1}
VAR
  Ch: CHAR;
BEGIN
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
END;
BEGIN
  Sum := 0;
  Digit := 0;
  ReadDigit(INPUT, Digit);
  WHILE (Digit <> -1)
  DO
  BEGIN
    Sum := Sum + Digit;
    ReadDigit(INPUT, Digit)
  END;
  WRITELN('Сумма цифр текста до первого нецифрового символа: ', Sum)
END.  
