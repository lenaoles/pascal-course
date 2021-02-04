//спроси у пользователя 5 чисел и заполни ими массив
const itemsCount = 4;
begin
  var myCoolArray: array [0..itemsCount] of real;  
  for var j := 0 to itemsCount do
  begin
    myCoolArray[j] := ReadReal('Введите число: ');
  end;    
  for var i := 0 to itemsCount do  
    write(myCoolArray[i], ' ');  
end.