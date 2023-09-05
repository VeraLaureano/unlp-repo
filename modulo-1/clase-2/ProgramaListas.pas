Program listas;
Type
  Lista= ^Nodo;
  Nodo= Record
           Datos: integer;
           Sig: Lista;
        End;
Var
 L: Lista;
 n: integer;

Procedure AgregarAdelante (var L:lista; num:integer);
Var nue:Lista;
  Begin
    New(nue);
    nue^.datos:=num;
    nue^.sig:=L;
    L:=nue;
  End;


Procedure Imprimir (pri:lista);
Begin
   while (pri <> NIL) do begin
     write (pri^.datos, ' ');
     pri:= pri^.sig
  end;
  writeln;
end;

function minimoEnLista (l: lista): integer;
var 
    minimo: integer;
begin
    if (l = nil) then
        minimoEnLista := MaxInt
    else
    begin
        minimo := minimoEnLista(l^.sig);
        if (l^.datos < minimo) then
            minimoEnLista := l^.datos
        else
            minimoEnLista := minimo
    end
end;

function IntAStr(num: integer): string;
var
    buffer: string[11];
begin
    Str(num, buffer);
    IntAStr := buffer
end;

function imprimirLista(l: lista): string;
begin
    if (l = nil) then
        imprimirLista := ''
    else
        imprimirLista := IntAStr(l^.datos) + ' ' + imprimirLista(l^.sig)
end;

begin
 L:=nil;
 randomize;
 n := random (20);
 While (n<>0) do Begin
   AgregarAdelante (L, n);
   n := random (20);
 End;
 writeln ('Lista generada: ');
 imprimir (L);
 writeln(imprimirLista(L));
 writeln(minimoEnLista(L));
 readln
end.