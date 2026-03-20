CREATE TABLE matriz (
  linha NUMBER,
  coluna NUMBER,
  valor CHAR(1)
);

BEGIN
  FOR i IN 0..2 LOOP
    FOR j IN 0..2 LOOP
      IF i = j OR i + j = 2 THEN
        INSERT INTO matriz VALUES (i, j, 'x');
      ELSE
        INSERT INTO matriz VALUES (i, j, '@');
      END IF;
    END LOOP;
  END LOOP;
END;
/