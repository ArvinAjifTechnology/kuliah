print("Aplikasi Penjualan Obat")
print("<<<<<>>>>>")
print("Input Data banyak obat")

namaobat = input("Nama Obat : ")
banyakkaplet = int(input("Banyak Kaplet : "))

harga = 25000*banyakkaplet

# if banyakkaplet <= 50:
#     potongan = harga * 0.05

# elif banyakkaplet >= 50:
#     potongan = harga * 0.10
if banyakkaplet <= 50:
    potongan = harga * 0.05

else:
    potongan = harga * 0.10
    
totalharga=harga-potongan
    
print()
print("Hasil Perhitungan")
print("Nama Obat         : ", namaobat)
print("Banyak kaplet     : ", banyakkaplet)
print("Total Harga       :Rp ", harga)
print("Potongan          :Rp ", potongan)