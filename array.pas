program multiplo;
uses crt;

var
    box: array[1..3, 1..3] of integer;
    i, j, row, col, sum: integer;
    root: real;
begin 
    write('Filas de la matriz => ');
    read(row);
    write('Columnas de la matriz => ');
    read(col);
    
    for i:=1 to row do
        begin
            for j:=1 to col do
                begin
                    write('Array(', i, j, ')=');
                    read(box[i, j]);
                    if mod box[i, j] := 0 then
                        begin
                            sum:= sum + box[i,j];
                        end;
                end;
        end;
end.
