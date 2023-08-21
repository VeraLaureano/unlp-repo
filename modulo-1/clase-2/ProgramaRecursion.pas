program Recursion;

var 
  num, maximo: integer;

{ procedure digitoMaximo(n: integer; var max: integer);
var
  dig: integer;
begin
  dig:= n mod 10;
  if ( dig > max ) then
    max:= dig;
  n:= n div 10;
  if (n <> 0) then
    digitoMaximo(n, max);
end; }

function digitoMaximo(number, max: integer): integer;
var
    digito: integer;
begin
    if (number = 0) then
        digitoMaximo := max
    else
    begin
        digito := number mod 10;
        if digito > max then
            max := digito;
        digitoMaximo := digitoMaximo(number div 10, max);
    end
end;

Begin
  writeln( 'Ingrese un entero no negativo:');
  readln (num);
  writeln ( 'El digito maximo del numero ', num, ' es: ', digitoMaximo (num, 0));
  readln;
End.