PROGRAM SelectSort(INPUT, OUTPUT);
{��������� �������, �������������� #, �� INPUT � OUTPUT.
 ��������� ������ ������, ���� � INPUT ����������� #}
VAR
  Ch, Min: CHAR;
  F1, F2: TEXT;
BEGIN {SelectSort}
  BEGIN {���������� INPUT � F1 � ��� � OUTPUT}
    REWRITE(F1);
    WRITE(OUTPUT, 'INPUT DATA:');
    READ(INPUT, Ch);
    WHILE Ch <> '#'
    DO
      BEGIN
        WRITE(F1, Ch);
        WRITE(OUTPUT, Ch);
        READ(INPUT, Ch)
      END;
    WRITELN(OUTPUT);
    WRITELN(F1, '#')
  END;
  BEGIN {����������� F1 � OUTPUT, ��������� ��������� SelectSort}
    WRITE(OUTPUT, 'SORTED DATA:');
    RESET(F1);
    READ(F1, Ch);
    WHILE Ch <> '#'
    DO {Ch <> '#' � Ch1 � ������ ������ F1}
      BEGIN
        {�������� ����������� �� F1 � �������� ������� F1 � F2}
        WRITE(OUTPUT, Min);
        {�������� F2 � F1}
        READ(F1, Ch)
      END;
    WRITELN(OUTPUT);
  END;
END. {SelectSort}                   
