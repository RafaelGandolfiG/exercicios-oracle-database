SET SERVEROUTPUT ON;
BEGIN
  FOR i IN 0..2 LOOP
    FOR j IN 0..2 LOOP
      IF i = j OR i + j = 2 THEN
        DBMS_OUTPUT.PUT('x ');
      ELSE
        DBMS_OUTPUT.PUT('@ ');
      END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(''); -- quebra a linha
  END LOOP;
END;
/