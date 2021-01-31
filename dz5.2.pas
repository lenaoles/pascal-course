//Вводится число. Преобразовать его в другое число, цифры которого будут следовать в обратном порядке по сравнению с введенным числом.
begin
  var userNumber: Integer;
  repeat
    begin
      write('Введите целое число не превышающее 999999999: ');
      userNumber := ReadInteger;
    end;
  until userNumber < 1000000000;
  write ('Обратный порядок цифр введённого числа: ');
    var digitsQty: integer;
  var y := 0;
  while userNumber > round(10 ** y) do 
  begin
    digitsQty := y;
    y := y + 1; 
  end;
  var digit : Integer;
  var result :=0;
  for var x := 0 to digitsQty do 
    begin          
    digit := userNumber mod round(10 ** (x + 1)) div round(10 ** x);     
    result := round(10**(digitsQty-x))*digit+result;
    end;
    writeln (result);
end.
