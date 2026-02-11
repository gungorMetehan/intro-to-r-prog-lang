# 2 - VERI TURLERI

# R'da temel olarak alti tur veri vardir. Bunlar: mantiksal deger (logical), sayisal deger (numeric), tamsayi (integer), karmasik sayi (complex), 
# karakter (character) ve ham veridir (raw). 

## 2.a - Mantiksal deger
# Mantiksal degerler, ayni zamanda Boolean veri olarak bilinir ve iki degeri vardir: TRUE (DOGRU) ve FALSE (YANLIS).

mantik_data1 <- TRUE
mantik_data1
class(mantik_data1) # Bu veri nesnesinin sinifi nedir?

mantik_data2 <- F
mantik_data2
class(mantik_data2) # Bu veri nesnesinin sinifi nedir?

# Goruldugu uzere bazen TRUE yerine kisaltmasi olan T; FALSE yerine de kisaltmasi olan F kullanilabilir.

## 2.b - Sayisal deger
# Sayisal degerler, tum gercek (reel) sayilar icin kullanilabilir.

yazili_not <- 85
sinif_ortalamasi <- 70.8
yazili_not
sinif_ortalamasi

class(yazili_not) # Bu veri nesnesinin sinifi nedir?
class(sinif_ortalamasi) # Bu veri nesnesinin sinifi nedir?

## 2.c - Tamsayi
# Tam sayilari (integer) spesifik olarak belirtmek icin tam sayi veri turu kullanilir. Ancak bilindigi uzere tam sayilar da gercek sayidir. 
# Bu nedenle R'da ozellikle tam sayilari ifade etmek icin L harfi kullanilir.

kilo <- 68L
kilo
class(kilo) # Bu veri nesnesinin sinifi nedir?

## 2.d - Karmasik sayi
# Karmasik veriler, karmasik (kompleks) sayilar icindir. 
# Karmasik sayilar z = a + bi seklinde ifade edilir.

kompleks <- 5 + 2i
kompleks
class(kompleks) # Bu veri nesnesinin sinifi nedir?

## 2.e - Karakter
# Karakter verileri, character ya da string tipinde olabilir. 
# Ornegin, 'm' harfi bir karakter iken 'matematik' bir string ifadedir. Ikisi de karakter verisidir. 
# R'da genellikle ' ' karakterler icin, " " ise string veriler icin kullanilir. Ancak sonuc olarak olusan nesne hep karakter turundedir.

karakter <- 'r'
string_ornek <- "intro to r programming language"
karakter
string_ornek

class(karakter) # Bu veri nesnesinin sinifi nedir?
class(string_ornek) # Bu veri nesnesinin sinifi nedir?

## 2.f - Ham veri
# Ham veriler, degerleri raw byte olarak ifade etmek icin kullanilir. 
# Bunun icin asagidaki iki fonksiyondan yararlanilir.

# charToRaw() - karakter datasini raw dataya cevirir.
# rawToChar() - raw datayi karakter datasina cevirir.

ornek_rawdata <- charToRaw("TUSAS")
ornek_rawdata
class(ornek_rawdata) # Bu veri nesnesinin sinifi nedir?

ornek_karakter <- rawToChar(ornek_rawdata)
ornek_karakter
class(ornek_karakter) # Bu veri nesnesinin sinifi nedir?
