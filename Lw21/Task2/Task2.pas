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
  FCode: TEXT;
  Error: BOOLEAN;  
PROCEDURE Initialize(VAR Code: Chiper; VAR FCode: TEXT);
VAR 
  AvailChForEncoding: SET OF CHAR;
  Ch1, Ch2, Ch3: CHAR;
  NumberString:INTEGER;
{��������� Code ���� ������}
BEGIN {Initialize}
  RESET(FCode);
  NumberString := 0;
  AvailChForEncoding := [];
  WHILE ((NOT EOF(FCode)) AND (NOT Error))
  DO
    BEGIN
      NumberString := NumberString + 1;
      IF NOT EOLN(FCode)
      THEN
        READ(FCode, Ch1);
      IF NOT EOLN(FCode)
      THEN
        READ(FCode, Ch2);
      IF NOT EOLN(FCode)
      THEN
        READ(FCode, Ch3)
      ELSE
        BEGIN
          WRITELN('INCORRECT DATA TYPE. FORMAT  SYMBOL = SYMBOL', NumberString, '������');
          Error := TRUE
        END;
      IF (((Ch1 IN ['A'..'Z']) OR (Ch1 = ' ')) AND (Ch2 = '=') AND NOT(Ch3 IN AvailChForEncoding))
      THEN
        BEGIN
          Code[Ch1] := Ch3;
          AvailChForEncoding := AvailChForEncoding + [Ch3]
        END
      ELSE
        BEGIN
          WRITELN('INCORRECT DATA TYPE. FORMAT  SYMBOL = SYMBOL. You cannot repeat the cipher ', NumberString, ' ������');
          ERROR := TRUE
        END;
      READLN(FCODE);        
    END
END;  {Initialize}
 
PROCEDURE Encode(VAR Msg: Str);
{������� ������� �� Code, ��������������� �������� �� Msg}
VAR
  Index: 1 .. Len;
BEGIN {Encode}
  FOR Index := 1 TO I
  DO
    IF Msg[Index] IN  (['A'..'Z']+[' '])
    THEN
      WRITE(Code[Msg[Index]])
    ELSE
      WRITE(Msg[Index]);   
  WRITELN
END;  {Encode}
  
BEGIN {Encryption}
  {���������������� Code}
  ASSIGN(FCode, 'code.txt');
  Error := FALSE; 
  Initialize(Code, FCode);
  IF NOT(ERROR)
  THEN
    BEGIN
      {������ ������ � Msg � ����������� ��}
      I := 0;
      WHILE ((NOT EOLN) AND (I < Len))
      DO
        BEGIN
          I := I + 1;
          READ(Msg[I])
        END;
      READLN;
      WRITELN('��������������:');
      {����������� ������������ ���������}
      Encode(Msg);  
    END
END.  {Encryption}
