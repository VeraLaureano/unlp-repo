program repaso_2;
const
    MAX = 5;
type 
    tArray = array [1..MAX] of integer;
var
    arr: tArray;
    i, num: integer;
    found: boolean;
procedure search(arr: tArray; num: integer; var found: boolean);
var
    i: integer;
begin
    i := 1;
    while (i <= MAX) and (not(found)) do
    begin
        if (arr[i] = num) then
            found := true
        else
            i := i + 1
    end
end;
begin
    found := false;
    for i := 1 to MAX do
    begin   
        write('Number: ');
        readln(arr[i])
    end;
    
    write('Search: ');
    readln(num);
    
    search(arr, num, found);
    
    if (found) then
        writeln('Found')
    else 
        writeln('Not found')
end.

