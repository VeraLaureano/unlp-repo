procedure crearRaiz (var raiz: arbol; value: integer);
begin
    new(raiz);
    raiz^.data := value;
    raiz^.hi := nil;
    raiz^.hd := nil;
end;

procedure insertar(var nodo: arbol; value: integer);
begin   
    if (nodo = nil) then
        crearRaiz(nodo, value)
    else if (value < nodo^.dato) then
        insertar(nodo^.hi, value)
    else if (value > nodo^.dato) then
        insertar(nodo^.hd, value)
end;

procedure preOrder(nodo: arbol);
begin
    if nodo <> nil then
    begin
        writeln(nodo^.value);
        preOrder(nodo^.hi);
        preOrder(nodo^.hd)
    end
end;

procedure inOrder(nodo: arbol);
begin
    if nodo <> nil then
    begin
        inOrder(nodo^.hi);
        writeln(nodo^.value);
        inOrder(nodo^.hd)
    end
end;

procedure postOrder(nodo: arbol);
begin
    if nodo <> nil then
    begin
        postOrder(nodo^.hi);
        postOrder(nodo^.hd)
        writeln(nodo^.value);
    end
end;

function buscar(nodo: arbol; valor: interger): arbol;
begin  
    if nodo = nil then
        buscar := nil
    else if valor = nodo^.dato then
        buscar := nodo
    else if valor < nodo^.valor then
        buscar := buscar(nodo^.hi, valor)
    else 
        buscar := buscar(nodo^.hd, valor)
end;

function varMax(nodo: arbol): integer;
begin
    if nodo = nil then
        varMax := -1
    else if (nodo^.hd <> nil) then
        varMax := varMax(nodo^.hd)
    else
        varMax := nodo^.dato
end;

function varMin(nodo: arbol): integer;
begin
    if nodo = nil then
        varMin := -1
    else if (nodo^.hi <> nil) then
        varMin := varMax(nodo^.hd)
    else
        varMin := nodo^.dato
end;