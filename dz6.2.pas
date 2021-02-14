//спросить у пользователя количество чисел, которые он будет вводить(заведомо меньше 100)
//сначала нормализовать (отнимаем минимальное от всех, чтоб минимальное стало нулем)
//а потом делим на максимум
begin
  var userNumbers: array [0..100] of Real;  
  var numbersQty: Integer;
  var minNumber: Real;  
  var maxNumber: Real;
  repeat
    numbersQty := ReadInteger('Какое количество чисел в пределах 100 будут введены?')
  until numbersQty < 100;  
  for var j := 0 to numbersQty - 1 do  
    userNumbers[j] := ReadReal('Введите число: ');      
  
  minNumber := userNumbers[0];
  for var j := 1 to numbersQty - 1 do
  begin
    if userNumbers[j] < minNumber then
      minNumber := userNumbers[j];
  end;  
  writeln ('Min=', minNumber);
  
  maxNumber := userNumbers[0];
  for var j := 1 to numbersQty - 1 do
  begin
    if userNumbers[j] > maxNumber then
      maxNumber := userNumbers[j];
  end;
  writeln ('Max=', maxNumber);
  
  for var j := 0 to numbersQty - 1 do
    writeln((userNumbers[j] - minNumber) / maxNumber);   
end.