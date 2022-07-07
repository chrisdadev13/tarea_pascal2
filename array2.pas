program arr_sum;
uses crt;
type
    arr = array[1..6, 1..7] of integer;
var
    a, b, c: arr;
    fa, fb, ca, cb, i, j: integer;

begin
    write('Filas de la matriz a => ');
    read(fa);
    write('Columnas de la matriz a => ');
    read(ca);
    write('Filas de la matriz b => ');
    read(fb);
    write('Columnas de la matriz b => ');
    read(cb);
    if (fa = fb) and (ca = cb) then 
        begin
            writeln('Introduzca los elementos de las matrices');
            for i:=1 to fa do
                begin
                    for j:=1 to ca do
                        begin
                            writeln('Elementos de la matriz A:');
                            write('a(', i, j, ')= ');
                            read(a[i, j]);
                            writeln('Elementos de la matriz B:');
                            write('b(', i, j, ')= ');
                            read(b[i, j]);
                        end;
                end;
            for i:=1 to fa do
                begin
                    for j:=1 to ca do
                        begin
                            c[i, j]:= a[i, j] + b[i, j];
                            write(c[i,j], ' ');
                        end;
                    writeln;
                end;
        end
    else
        write('Filas y columnas distintas');
    readkey;
end.
