// // Judul Program
// program KonversiSuhu;

// // Deklarasikan Suhu

// const
//     kelvin = 273;

// var
//     c : real;
//     suhu : real;

// begin
//     writeln('=============================');
//     write('Masukan Suhu Celcius =');read(c);
//     writeln('=============================');
//     suhu = c+kelvin;
//     writeln('Kelvin =', suhu:4:2);

// end.


program Konversi_suhu;
uses wincrt;
var
suhu : integer;
lagi : char;
procedure fahrenheit;
 
var
f : real;
 
begin
f := 1.8 * suhu + 32;
writeln('Suhu dalam Fahreinheit = ',f::2);
end;
 
 
procedure reamur;
var
r : real;
begin
r := 0.8 * suhu + 32;
writeln('Suhu Dalam Reamur = ',r::2);
end;
 
procedure kelvin;
var
klv : real;
begin
klv := suhu + 273;
writeln('Suhu Dalam Kelvin = ',klv::2);
end;
 
BEGIN
repeat
 
writeln('   _______________________________________ ');
 
writeln('         KONVERSI SUHU DARI CELCIUS       ');
 
writeln('   _______________________________________ ');
 
writeln;
 
write('Silahkan Ketik Angka Suhu Derajat Celcius : ');
readln(suhu);
writeln;
fahrenheit;
reamur;
kelvin;
writeln;
write('Tekan Y Untuk menghitung lagi atau T untuk keluar = ');
readln(lagi);
until UPCASE(lagi) <> 'Y';
END
 