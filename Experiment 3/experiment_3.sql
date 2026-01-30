DECLARE
    emp_id     NUMBER := 101;
    emp_name   VARCHAR2(50) := 'Joe';
    emp_salary NUMBER := 90000;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee ID : ' || emp_id);
    DBMS_OUTPUT.PUT_LINE('Employee Name : ' || emp_name);
    DBMS_OUTPUT.PUT_LINE('Employee Salary : ' || emp_salary);
END;
/

DECLARE
  emp_salary NUMBER := 50000;
  result NUMBER;
BEGIN
  DBMS_OUTPUT.PUT_LINE('Mathemathical Operations on salary ');
  result := emp_salary * 0.01;
  DBMS_OUTPUT.PUT_LINE('10% of salary :'|| result);
  DBMS_OUTPUT.PUT_LINE('Salary After Promotion : ' || (emp_salary+result));
  DBMS_OUTPUT.PUT_LINE('Salary Ater Demotion : ' || (emp_salary-result));
  DBMS_OUTPUT.PUT_LINE('Salary per annum. :' || (emp_salary*12));
END;
/

DECLARE
emp_salary NUMBER:= 60000;
package NUMBER;
BEGIN
  DBMS_OUTPUT.PUT_LINE('Employee Tax Bracket (calculated based on salary only, real figures might differ) :');
  package := emp_salary*12;
  IF package<300000 then
      DBMS_OUTPUT.PUT_LINE('Poor');
    elsif package<800000 then
      DBMS_OUTPUT.PUT_LINE('Still Poor but hopeful');
    elsif package<1200000 then
      DBMS_OUTPUT.PUT_LINE('Just avoiding tax');
    elsif package>1200000 then
      IF package<1500000 then
        DBMS_OUTPUT.PUT_LINE('Just avoided tax-free life');
      else
        DBMS_OUTPUT.PUT_LINE('RICH');
      end if;
  end if;
END;
/
