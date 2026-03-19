SET SERVEROUTPUT ON
DECLARE 
  funcionarios Employee%ROWTYPE;
  pedidos Orders%ROWTYPE;
  CURSOR total_vendas IS
    SELECT e.dept, SUM(o.amount) AS total
    FROM Employee e
    JOIN Orders o ON e.empId=o.empId
    GROUP BY e.dept;
BEGIN
  OPEN total_vendas;
  LOOP
    FETCH total_vendas INTO funcionarios.dept, pedidos.amount;
    EXIT WHEN total_vendas%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('departamento: ' ||funcionarios.dept);
    DBMS_OUTPUT.PUT_LINE('total: '|| pedidos.amount);
  END LOOP;
  CLOSE total_vendas;
END;
/