PROGRAM MinSort3 (INPUT,OUTPUT);
{������ 3-��ப� �� INPUT � OUTPUT }
VAR Ch1, Ch2, Ch3: CHAR;
BEGIN {MinSort3}
  READ(Ch1, Ch2, Ch3);
  WRITELN('�室�� ����� ', Ch1, Ch2, Ch3);
  WRITE('����஢���� ����� ');
  {������ ������ �  OUTPUT, ��࠭��� ᮤ�ন��� � Ch1 and Ch2 };
  BEGIN {�����㥬 Ch1, Ch2 � OUTPUT }
    IF Ch1 < Ch2
    THEN
      WRITE(Ch1, Ch2)
    ELSE
      WRITE(Ch2, Ch1)
END;
    WRITELN
 END.{Minsort3}