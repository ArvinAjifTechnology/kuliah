program BesaranTurunanMassaJenis;
uses crt;

var
// Massa
    M : integer;
// Volume
    V : integer;
    MassaJenis : real;
begin
clrscr;
writeln('Masukan Nilai Massa :');readln(M);
writeln('Masukan Nilai Volume :');readln(V);
MassaJenis:=M/V;
writeln('Massa Jenis Nya Adalah : ', MassaJenis:0:2, ' kg/m3');
readln;
end.