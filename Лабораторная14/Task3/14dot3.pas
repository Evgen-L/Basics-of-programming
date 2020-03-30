PROGRAM FileSort(INPUT, OUTPUT);
VAR
  FileInp: TEXT;
  Cha: CHAR;
PROCEDURE RecursiveSort(VAR F1: TEXT);
VAR 
  F2, F3: TEXT;
  Ch: CHAR;
{PROCEDURE Split(VAR F1, F2, F3: TEXT)
 ��������� F1 ?? F2 ? F3}

PROCEDURE Split(VAR F1, F2, F3: TEXT);
{��������� F1 �� F2, F3}
VAR 
  Ch, Switch: CHAR;
BEGIN {Split}
  RESET(F1);
  REWRITE(F2);
  REWRITE(F3);
  {����������� F1 ����������� � F2 � F3}
  Switch := '2';
  WHILE NOT (EOLN(F1))
  DO
    BEGIN
      READ(F1, Ch);
      IF (Switch = '2')
      THEN
        BEGIN
          WRITE(F2, Ch);
          Switch := '3'
        END
      ELSE
        BEGIN
          WRITE(F3, Ch);
          Switch := '2'
        END
    END;
  {����������� F1 ����������� � F2 � F3}
  WRITELN(F2);
  WRITELN(F3);
END; {Split}
{PROCEDURE Merge(VAR F1, F2, F3: TEXT)
������� F2 � F3 � F1}
PROCEDURE Merge(VAR F1, F2, F3: TEXT);
{������� F2, F3 � F1  � ������������� �������}
VAR 
  Ch2, Ch3: CHAR;
BEGIN {Merge}
  RESET(F2);
  RESET(F3);
  REWRITE(F1);
  READ(F2, Ch2);
  READ(F3, Ch3);
  WHILE (NOT EOF(F2)) AND (NOT EOF(F3))
  DO
    BEGIN
      IF Ch2 < Ch3
      THEN 
        BEGIN
          WRITE(F1, Ch2);
          READ(F2, Ch2);
        END
      ELSE
        BEGIN
          WRITE(F1, Ch3);
          READ(F3, Ch3);
        END
    END;
  {���������� ������� F2 � F1}
  WHILE NOT EOF(F2)
  DO
    BEGIN
      WRITE(F1, Ch2);
      READ(F2, Ch2);
    END;
  {���������� ������� F3 � F1}
  WHILE NOT (EOF(F3))
  DO
    BEGIN
      WRITE(F1, Ch3);
      READ(F3, Ch3);
    END;
  WRITELN(F1);
END; {Merge}
BEGIN {RecursiveSort}
  RESET(F1);
  IF NOT EOLN(F1)       
  THEN
    BEGIN
      READ(F1, Ch);
      IF NOT EOLN(F1)
      THEN {���� ����� ��� ������� 2 �������}
        BEGIN
          Split(F1, F2, F3);
          RecursiveSort(F2);
          RecursiveSort(F3);
          Merge(F1, F2, F3)
        END
    END
END;{RecursiveSort}

BEGIN {FileSort}
  REWRITE(FileInp);
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      READ(INPUT, Cha);
      WRITE(FileInp, Cha)
    END;
  WRITELN(FileInp);
  RecursiveSort(FileInp);
  RESET(FileInp);
  WHILE NOT EOLN(FileInp)
  DO
    BEGIN
      READ(FileInp, Cha);
      WRITE(OUTPUT, Cha)
    END;
  WRITELN(OUTPUT)
END.{FileSort}

