program recursividad;
function factorial(n: integer): integer;
begin
    if n > 0 then
        factorial := n * factorial(n-1)
    else if n = 0 then
        factorial := 1;
end;
begin
    writeln(factorial(5));
end.