#Masukan Input Celcius
c = "c"
print('==========================================')
celcius = float(input("Masukkan Suhu Celcius ="))
kelvin = 273
reamur = 4/5
fahrenheit = 9/5

#Hitung Kelvin
print('==========================================')
print('Konversi Celcius Ke Kelvin, Reamur Dan Fahrenheit ')
print('==========================================')

# kelvin = celcius+273

# print('==========================================')
# print('Konversi Celcius Ke Kelvin ')
# print('==========================================')

# reamur = 4/5*celcius

# fahrenheit = 9/5*celcius

kelvin = kelvin + celcius
reamur = reamur * celcius
fahrenheit = fahrenheit * celcius

print(str(kelvin)+ "" + "kelvin") 
print(str(reamur)+ "" +"reamur")
print(str(fahrenheit)+ "" +"fahrenheit")

# print("Kelvin = ")  + print(str(kelvin)+ "" + "k") 
# print("Reamur = ") + print(str(reamur)+ "" +"r")
# print("Fahrenheit = ") + print(str(fahrenheit)+ "" +"f")