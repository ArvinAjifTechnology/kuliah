program BesaranTurunanMassaJenis;
// uses ctr;

var
    M : real;
    V : real;
    MassaJenis : real;
begin
// clrscr;
writeln('Masukan Nilai Massa');readln(M);
writeln('Masukan Nilai Jenis');readln(V);
MassaJenis:=M/V;
writeln('Massa Jenis Nya Adalah : ', MassaJenis:4:0, ' kg/m');
end.