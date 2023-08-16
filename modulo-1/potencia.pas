program CalculoDePotencia;
function potencia(base, exp: integer): integer;
begin
    if (exp = 0) then
        potencia := 1
    else
        potencia := base * potencia(base, exp-1)
end;
{PROGRAMA PRINCIPAL}
var
    n, x: integer;
begin
    write ('Ingrese base: ');
    Readln (n);
    write ('Ingrese exponente: ');
    Readln (x);
    writeln(potencia(n, x));
    readln;
end.