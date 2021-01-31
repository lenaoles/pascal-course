//Дано число. Найти сумму и произведение его цифр.
//ну integer (главное чтоб влазило)
begin
  var userNumber: Integer;
  repeat
    begin
      write('Введите целое число не превышающее 999999999: ');
      userNumber := ReadInteger;
    end;
  until userNumber < 1000000000;
  var digitsQty: integer;
  var y := 0;
  while userNumber > round(10 ** y) do //по факту же количество будет в переменной y
  begin
    digitsQty := y;
    y := y + 1; 
  end;
  var multiplication: Integer;  
  var intermediate := 1;
  for var x := 0 to digitsQty do
  begin
    multiplication := intermediate * ((userNumber mod round(10 ** (x + 1))) div round(10 ** x));
    intermediate := multiplication;
  end;  
  writeln('Произведение цифр введённого числа составляет: ', multiplication);
  intermediate := 0;
  var sum: Integer;
  for var x := 0 to digitsQty do 
  begin
    sum := intermediate + ((userNumber mod round(10 ** (x + 1))) div round(10 ** x));
    intermediate := sum;
  end;  
  writeln('Сумма цифр введённого числа составляет: ', sum);  
end.   