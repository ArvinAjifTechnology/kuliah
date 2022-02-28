// Judul Program
program Luas_Lingkaran;

// Mendeklarasikan Variabel Phi Dengan Type Constan
const
    phi=3.14;
// Mendeklarasikan Variabel r Atau Jari-Jari Dan Luas Dengan Type Real
var
    r           : real;
    luas        : real;
// Proses Perhitungan Luas Jari-Jari
begin
    writeln('=================================');
    writeln('=====Luas Jari-Jari Lingkaran====');
    writeln('=============================');
    write('Masukan Jari-jari = ');read(r);
    writeln;
    luas:=phi*r*r;
    writeln('Luas     = ',luas:4:2);
    writeln('=============================');
end.