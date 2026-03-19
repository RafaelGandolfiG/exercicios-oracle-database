SET SERVEROUTPUT ON
DECLARE 
 funcionarios Employee%ROWTYPE;
 clientes Customers%ROWTYPE;
 pedidios Orders%ROWTYPE;
 CURSOR mostrar_cursor IS
  SELECT o.item, e.name, c.name
  FROM Orders o
  JOIN Employee e ON o.empId=e.empId
  JOIN Customers c ON o.customerId=c.customerId;
BEGIN 
  OPEN mostrar_cursor;
  LOOP
    FETCH mostrar_cursor INTO pedidios.item, funcionarios.name, clientes.name;
    EXIT WHEN mostrar_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('item: '||pedidios.item);
    DBMS_OUTPUT.PUT_LINE('nome do funcionario: '||funcionarios.name);
    DBMS_OUTPUT.PUT_LINE('nome do cliente: '||clientes.name);
  END LOOP;
  CLOSE mostrar_cursor;
END;
/