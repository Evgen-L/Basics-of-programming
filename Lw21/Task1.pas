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
PROCEDURE Initialize(VAR Code: Chiper);
{Присвоить Code шифр замены}
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
  Code['Z'] := 'A'
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
  Initialize(Code);
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
