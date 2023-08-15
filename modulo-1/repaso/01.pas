program repaso_1;
var
    number: integer;
begin
    repeat
        readln(number)
    until (number <> 0);
    
    if ((number mod 2) = 0) then
        writeln('even number')
    else
        writeln('odd number')
end.

