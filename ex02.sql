SET SERVEROUTPUT ON
DECLARE
  funcionarios Employee%ROWTYPE;
  CURSOR funcionarios_cursor IS
    SELECT e.name, e.dept
    FROM Employee e;
BEGIN
  OPEN funcionarios_cursor;
  LOOP
    FETCH funcionarios_cursor INTO funcionarios.name, funcionarios.dept;
    EXIT WHEN funcionarios_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('nome: ' || funcionarios.nAme);
    DBMS_OUTPUT.PUT_LINE('departamento: ' || funcionarios.dept);
  END LOOP;
  CLOSE funcionarios_cursor;
END;
/