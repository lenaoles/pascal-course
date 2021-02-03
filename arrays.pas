//спроси у пользователя 5 чисел и заполни ими массив
const cells = 4;
begin
  var myCoolArray: array [0..cells] of real;  
  for var x := 0 to cells do
  begin
    myCoolArray[x] := ReadReal('Введите число ');
  end;    
  for var i := 0 to cells do  
    write(myCoolArray[i], ' ');  
end.