PROGRAM MinSort3 (INPUT,OUTPUT);
{����㥬 3-��ப� �� INPUT � OUTPUT }
VAR Ch1, Ch2, Ch3: CHAR;
BEGIN {MinSort3}
  READ(Ch1, Ch2, Ch3);
  WRITE('�室�� ����� ','(', Ch1, ',', Ch2, ',', Ch3, ')');
  WRITE(' ����஢���� ����� ', '(');
  BEGIN {������ ������ � OUTPUT, ��࠭��� ᮤ�ন��� � Ch1 and Ch2 };
    IF Ch1 < Ch2
    THEN
    { ������ ������ �� Ch1, Ch3 �  OUTPUT,
     ��६����� Ch3 � Ch1,�᫨ ����室���}
      IF Ch1 < Ch3
      THEN
        BEGIN
          WRITE(Ch1, ',');
          Ch1 := Ch3
        END
      ELSE
        WRITE(Ch3, ',')
    ELSE
     { ������ �����㬬 �� Ch2, Ch3 �  OUTPUT,
       ��६����� Ch3 � Ch2, �᫨ ����室���}
      IF Ch2 < Ch3
      THEN
        BEGIN
          WRITE(Ch2, ',');
          Ch2 := Ch3
        END
      ELSE
        WRITE(Ch3, ',')
  END;
  BEGIN {�����㥬 Ch1, Ch2 � OUTPUT }
    IF Ch1 < Ch2
    THEN
      WRITE(Ch1, ',', Ch2)
    ELSE
      WRITE(Ch2, ',', Ch1)
  END;
    WRITELN(')')
END.{Minsort3}