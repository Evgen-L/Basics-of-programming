PROGRAM Encryption(INPUT, OUTPUT);
{��������� ������� �� INPUT � ��� �������� Chiper 
  � �������� ����� ������� � OUTPUT}
CONST
  Len = 20;
TYPE
  Str = ARRAY [1 .. Len] OF ' ' .. 'Z';
  Chiper = ARRAY [' ' .. 'Z'] OF CHAR;
VAR
  Msg: Str;
  Code: Chiper;
  I: INTEGER;
 
PROCEDURE Initialize(VAR Code: Chiper);
{��������� Code ���� ������}
BEGIN {Initialize}
  Code['A'] := 'Z';
  Code['B'] := 'Y';
  Code['C'] := 'X';
  Code['D'] := '#';
  Code['E'] := 'V';
  Code['F'] := 'U';
  Code['G'] := 'T';
  Code['H'] := 'S';
  Code['I'] := 'I';
  Code['J'] := 'Q';
  Code['K'] := 'P';
  Code['L'] := '!';
  Code['M'] := 'N';
  Code['N'] := 'M';
  Code['O'] := '2';
  Code['P'] := 'K';
  Code['Q'] := '$';
  Code['R'] := 'D';
  Code['S'] := 'H';  
  Code['T'] := '*';
  Code['U'] := 'F';
  Code['V'] := 'E';
  Code['W'] := 'T';
  Code['X'] := 'C';
  Code['Y'] := 'B';
  Code['Z'] := 'A';
  Code[' '] := '&'
END;  {Initialize}
 
PROCEDURE Encode(VAR Msg: Str);
{������� ������� �� Code, ��������������� �������� �� Msg}
VAR
  Index: 1 .. Len;
BEGIN {Encode}
  {������ ������ � Msg � ����������� ��}
  I := 0;
  WHILE NOT EOLN AND (I < Len)
  DO
    BEGIN
      I := I + 1;           
      READ(Msg[I]);
    END;
  READLN;
  FOR Index := 1 TO I
  DO
    IF Msg[Index] IN (['A' .. 'Z'] + [' '])
    THEN
      WRITE(Code[Msg[Index]])
    ELSE
      WRITE(Msg[Index]);
  WRITELN
END;  {Encode}
 
BEGIN {Encryption}
  {���������������� Code}
  Initialize(Code);
  WHILE NOT EOF
  DO
    {����������� ������������ ���������}
    Encode(Msg);
END.  {Encryption}
