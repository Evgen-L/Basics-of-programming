PROGRAM Encryption(INPUT, OUTPUT);
{Переводит символы из INPUT в код согласно Chiper 
  и печатает новые символы в OUTPUT}
CONST
  Len = 20;
TYPE
  Str = ARRAY [1 .. Len] OF ' ' .. 'Z';
  Chiper = ARRAY [' ' .. 'Z'] OF CHAR;
  SetOfCh = SET OF CHAR;
VAR
  Msg: Str;
  Code: Chiper;
  I: INTEGER;
  FCode: TEXT;
  Error: BOOLEAN;
  AllChar: SetOfCh;  
PROCEDURE Initialize(VAR Code: Chiper; VAR FCode: TEXT);
VAR 
  KeeperOccupiedValues: SET OF CHAR;
  Ch1, Ch2, Ch3: CHAR;
{Присвоить Code шифр замены}
BEGIN {Initialize}
  RESET(FCode);
  KeeperOccupiedValues := [];
  IF NOT EOLN(FCode)
  THEN
    READ(FCode, Ch2);
  IF NOT EOLN(FCode)
  THEN
    READ(FCode, Ch3);
  WHILE ((NOT EOF(FCode)) AND (NOT Error))
  DO
    BEGIN
      Ch1 := Ch2;
      Ch2 := Ch3;
      READ(FCode, Ch3);
      IF (Ch2 = '=')
      THEN
        IF (((Ch1 IN ['A'..'Z']) OR (Ch1 = ' ')) AND NOT(Ch3 IN KeeperOccupiedValues))
        THEN
          BEGIN
            Code[Ch1] := Ch3;
            KeeperOccupiedValues := KeeperOccupiedValues + [Ch3]
          END
        ELSE
          BEGIN
            WRITELN('INCORRECT DATA TYPE');
            ERROR := TRUE
          END        
    END
END;  {Initialize}
 
PROCEDURE Encode(VAR Msg: Str; VAR AllChar: SetOfCh);
{Выводит символы из Code, соответствующие символам из Msg}
VAR
  Index: 1 .. Len;
BEGIN {Encode}
  FOR Index := 1 TO I
  DO
    IF Msg[Index] IN [' '..'Z']
    THEN
      WRITE(Code[Msg[Index]])
    ELSE
      WRITE(Msg[Index]);   
  WRITELN
END;  {Encode}
  
BEGIN {Encryption}
  {Инициализировать Code}
  ASSIGN(FCode, 'code.txt');
  Error := FALSE; 
  WRITELN(ERROR);
  Initialize(Code, FCode);
  IF NOT(ERROR)
  THEN
    BEGIN
      
        {читать строку в Msg и распечатать ее}
        I := 0;
        WHILE ((NOT EOLN) AND (I < Len))
        DO
          BEGIN
            I := I + 1;
            READ(Msg[I])
          END;
       
         WRITELN;
        WRITELN('��������������:');
        {распечатать кодированное сообщение}
        Encode(Msg, AllChar);  
    END
END.  {Encryption}
