PROGRAM OneDigit(INPUT, OUTPUT);
VAR
  Number: INTEGER;
PROCEDURE ReadNumber(VAR FromFile: TEXT; VAR Number: INTEGER);
{����������� ������ ���� �� ����� �� ������� ����������� �������,  � ��������������� ����� ����� N}
VAR
  Digit: INTEGER;
PROCEDURE ReadDigit(VAR FromFile: TEXT; VAR Digit: INTEGER);
{��������� ������� ������ �� �����, ���� �� - �����, ���������� ��� 
 ���������� � �������� ���� INTEGER. ���� ��������� ������ �� �����
 ���������� -1}
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
  WHILE NOT EOLN(FromFile) AND (Number <> -1)
  DO
    BEGIN
      ReadDigit(FromFile, Digit); 
      IF (( Number > (MAXINT DIV 10)) OR ((Number = MAXINT DIV 10) AND (Digit > MAXINT MOD 10))) AND (Digit <> -1) {AND DIGIT <> -1 ����� ��� ����� ������� 2147483647�����.  
      ����� ��������� ������ �� 2147483647, �� ������� DIGIT <> -1 �������� ���� ������ ����� �����, �� ����� ������� �� � ������ �����, � ��� ����� �������} 
      THEN                                                                                                        
        Number := -1
      ELSE
        IF Digit <> -1
        THEN
          Number := Number * 10 + Digit;         
    END;   
END;{ReadNumber}
BEGIN{OneDigit}
  ReadNumber(INPUT, Number);
  WRITELN('��������������: ', Number)             
END.{OneDigit} 
