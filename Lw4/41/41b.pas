PROGRAM PaulRevere(INPUT, OUTPUT);
{����� ᮮ⢥�����饣� ᮮ�饭�� ,������饣� �� ����稭�
 �� �室�:  '...by land'  ��� 1;  '...by sea'  ��� 2;
 ���� ����� ᮮ�饭�� �� �訡��}
VAR
  Lanterns: CHAR;
BEGIN {PaulRevere}
  {Read Lanterns}
  READ(Lanterns);
  {Issue Paul Revere's message}
  IF Lanterns >= '1'
  THEN
    IF Lanterns <= '2'
    THEN
      BEGIN
        WRITE('The British are coming by ');
        IF Lanterns = '1'
        THEN
          WRITELN('land.')
        ELSE
          WRITELN('sea.')
      END
    ELSE
      WRITELN('The North Church shows only ''', Lanterns, '''.')

END. {PaulRevere}