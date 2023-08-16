program recursividad;
function potencia (b, e: integer): integer;
begin
    if e = 0 then
        potencia := 1
    else if e > 0 then
        potencia := b * potencia(b, e-1);
end;
begin
    writeln(potencia(2, 4))
end.