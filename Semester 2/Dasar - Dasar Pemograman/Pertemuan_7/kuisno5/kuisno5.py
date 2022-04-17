print("Aplikasi Penjualan Obat")
print("")
print("Input Data")
#  Input Data
namaobat= input("Nama Obat : ")
banyakkaplet= int(input("Banyak Kaplet : "))

# Perhitungan
harga = 25000*banyakkaplet

if banyakkaplet <= 50:
    potongan = harga - 0.05

elif banyakkaplet >= 50:
    potongan = harga - 0.10
    
    
print()
# Output
print ("Hasil Perhitungan")
print(" Nama Obat       : " ,namaobat)
print("Banyak Kaplet    :", banyakkaplet)
print("Total Harga      : Rp", harga)
print("Potongan         : Rp", potongan)