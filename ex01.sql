SET SERVEROUTPUT ON
DECLARE 
  emprec employee%ROWTYPE;
  CURSOR cursor_emp IS
    SELECT e.name, e.dept
    FROM Employee e
    WHERE e.empId>1
    GROUP BY e.name, e.dept, e.empId
    HAVING e.dept='Sales'
    ORDER BY e.empId DESC;
BEGIN 
  OPEN cursor_emp;
  LOOP
    FETCH cursor_emp INTO emprec.name, emprec.dept;
    EXIT WHEN cursor_emp%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(emprec.name);
    DBMS_OUTPUT.PUT_LINE(emprec.dept);
  END LOOP;
  CLOSE cursor_emp;
END;
/