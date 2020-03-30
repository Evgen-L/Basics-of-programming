PROGRAM RevString(INPUT, OUTPUT);
PROCEDURE RCopy(VAR FileInp: TEXT);
VAR
  Ch: CHAR;
BEGIN{RCopy}
  IF NOT EOLN(FileInp)
  THEN
    BEGIN
      READ(FileInp, Ch);
      WRITE(Ch);
      RCopy(FileInp)
    END;
END;{RCopy}
BEGIN{RevString}
  RCopy(INPUT);
END.{RevString}
