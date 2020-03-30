PROGRAM SumOfDigits(INPUT, OUTPUT);
VAR
  Int, Sum: INTEGER;
PROCEDURE ReadDigit(VAR FromFile: TEXT; VAR Digit: INTEGER);
{Считывает текущий символ из файла, если он - цифра, возвращает его 
 преобразуя в значение типа INTEGER. Если считанный символ не цифра
 возвращает -1}
VAR
  Ch: CHAR;
BEGIN
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
END;
BEGIN
  Sum := 0;
  Int := 0;
  IF NOT EOLN(INPUT)
  THEN
    BEGIN
      WHILE NOT EOLN(INPUT) AND (Int <> -1)
      DO
        BEGIN
          Sum := Sum + Int;
          ReadDigit(INPUT, Int)
        END;
      IF (Int <> -1)
      THEN
        Sum := Sum + Int;
      WRITELN('Сумма цифр текста до первого нецифрового символа: ', Sum)
    END 
END.  
