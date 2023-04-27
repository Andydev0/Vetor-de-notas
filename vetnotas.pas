program vet.notas;

var
  vet_notas: array [0..3] of real;
  i: integer;
  soma, media: real;
  nota_valida: boolean;

begin
  soma := 0;

  writeln('Digite as quatro notas (valores de 0 a 10):');
  for i := 0 to 3 do
  begin
    nota_valida := false;
    while not nota_valida do 
    begin
      write('Nota ', i+1, ': ');
      readln(vet_notas[i]);
      if (vet_notas[i] >= 0) and (vet_notas[i] <= 10) then 
      begin
        nota_valida := true;
        soma := soma + vet_notas[i];
      end
      else 
      begin
        writeln('Nota inválida. Digite um valor entre 0 e 10.');
      end;
    end;
  end;

  media := soma / 4;

  writeln('vet_notas:');
  for i := 0 to 3 do 
  begin
    writeln('Nota ', i, ': ', vet_notas[i]:0:2);
  end;
  writeln('Média: ', media:0:2);

  readln;
end.
