PROGRAM Format(INPUT, OUTPUT);
VAR
  Ch1, Ch2, Ch3, Ch4, Ch5, Ch6, Ch7, Ch8, Ch9: CHAR;
BEGIN  {Format}
  Ch1 := ' ';
  Ch2 := ' ';
  Ch3 := ' ';
  Ch4 := ' ';
  Ch5 := ' ';
  Ch6 := ' ';
  Ch7 := ' ';
  Ch8 := ' ';
  Ch9 := ' ';
  WHILE NOT EOLN
  DO
    BEGIN {����} {������ ������� �����: ������� ������� ������, ����� ���������, ����� �� ������� ����� ��� (����� � ��������� ��������)}
      Ch1 := Ch2;
      Ch2 := Ch3;
      Ch3 := Ch4;
      Ch4 := Ch5;
      Ch5 := Ch6;
      Ch6 := Ch7;
      Ch7 := Ch8;
      Ch8 := Ch9;
      READ(Ch9);
      IF Ch9 = ' ' {����������� �� ��������} 
      THEN 
        BEGIN 
          WHILE Ch9 = ' ' 
          DO 
            READ(Ch9); 
        END; 
      IF Ch5 <> ' ' {������� ������ �������, � � ������ � ������� ��� ������ ������}
      THEN
        IF Ch5 = ','
        THEN 
          WRITE(Ch5, ' ')
        ELSE
          WRITE(Ch5);        
      IF ((Ch1 = 'B') AND (Ch2 = 'E') AND (Ch3 = 'G') AND (Ch4 = 'I') AND (Ch5 = 'N')) OR ((Ch5 = ';') AND (Ch6 <> ';') AND (Ch6 <> 'E') AND (Ch7 <> 'N') AND (Ch8 <> 'D') AND (Ch9 <> '.')) {����� ������ � ; ������ ����� � ��� �������}  
      THEN
        BEGIN
          WRITELN;
          WRITE(' ', ' ');
        END
      ELSE {� ����� END. ������ ������ �����}
         IF (Ch6 = 'E') AND (Ch7 = 'N') AND (Ch8 = 'D') AND (Ch9 = '.')
         THEN
           WRITELN;
    END; {����}
  WRITE('END.')
END.{Format}        
