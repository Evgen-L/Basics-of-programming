PROGRAM Encryption(INPUT, OUTPUT);
{Переводит символы из INPUT в код согласно Chiper 
  и печатает новые символы в OUTPUT}
CONST
  Len = 20;
TYPE
  Str = ARRAY [1 .. Len] OF 'A' .. 'Z';
  Chiper = ARRAY ['A' .. 'Z'] OF CHAR;
VAR
  Msg: Str;
  Code: Chiper;
  I: INTEGER; 
  LengthMessage: 0..Len;
  FCode: TEXT; 
  Error: BOOLEAN;  
PROCEDURE Initialize(VAR Code: Chiper; VAR FCode: TEXT);
VAR 
  KeeperOccupiedValues: SET OF CHAR;
  Ch1, Ch2, Ch3: CHAR; 
{Присвоить Code шифр замены}
BEGIN {Initialize}
  RESET(FCode);
  KeeperOccupiedValues := [];
  WHILE ((NOT EOF) AND (NOT Error))
  DO
    BEGIN
      Ch1 := '';
      Ch2 := '';
      Ch3 := '';
      WHILE NOT EOLN(FCode)
      DO
        BEGIN
          Ch1 := Ch2;
          Ch2 := Ch3;
          READ(FCode, Ch3);
        END; 
        
        IF (((Ch1 IN ['A'..'Z']) OR (Ch1 = ' ')) AND (Ch2 = '=') AND NOT(Ch3 IN KeeperOccupiedValues))
        THEN
          BEGIN
            Code[Ch1] := Ch3;
            KeeperOccupiedValues := KeeperOccupiedValues + [Ch3]
          END
        ELSE
          BEGIN
            WRITELN('INCORRECT DATA TYPE');
            Error := TRUE
          END;
      READLN(FCode);     
    END;
END;  {Initialize}
 
PROCEDURE Encode(VAR Msg: Str);
{Выводит символы из Code, соответствующие символам из Msg}
VAR
  Index: 1 .. Len;
BEGIN {Encode}
  FOR Index := 1 TO LengthMessage
  DO
    IF Msg[Index] IN ['A' .. 'Z']
    THEN
      WRITE(Code[Msg[Index]])
    ELSE
      IF Msg[Index] = ' '
      THEN
        WRITE('&')
      ELSE   
        WRITE(Msg[Index]);
  WRITELN
END;  {Encode}
  
BEGIN {Encryption}
  {Инициализировать Code}
  ASSIGN(FCode, 'code.txt');
  Error := FALSE;
  Initialize(Code, FCode);
  IF NOT(ERROR)
  THEN
    WHILE NOT EOF
    DO
      BEGIN
        {читать строку в Msg и распечатать ее}
        LengthMessage := 0;
        I := 0;
        WHILE NOT EOLN AND (I < Len)
        DO
          BEGIN
            I := I + 1;
            LengthMessage := I;
            READ(Msg[I])
          END;
        READLN;
        WRITELN;
        {распечатать кодированное сообщение}
        Encode(Msg);
        WRITELN('Message Length: ', LengthMessage)  
      END
END.  {Encryption}
