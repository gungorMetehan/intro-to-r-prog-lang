# 2- VERİ TÜRLERİ

# R’da temel olarak altı tür veri vardır. 
# Bunlar: mantıksal değer (logical), sayısal değer (numeric), tam sayı (integer), karmaşık sayı (complex), 
# karakter (character) ve ham veridir (raw). 

# Mantıksal değerler, aynı zamanda Boolean veri olarak bilinir ve iki değeri vardır: TRUE (DOĞRU) ve FALSE (YANLIŞ).

mantik_data1 <- TRUE
mantik_data1

class(mantik_data1)

mantik_data2 <- F
mantik_data2
class(mantik_data2)

# Sayısal değerler, tüm gerçek (reel) sayılar için kullanılabilir.

yazili_not <- 85
sinif_ortalamasi <- 70.8
yazili_not
sinif_ortalamasi

class(yazili_not)
class(sinif_ortalamasi)

# Tam sayıları spesifik olarak belirtmek için tam sayı veri türü kullanılır. 
# Ancak bilindiği üzere tam sayılar da gerçek sayıdır. 
# Bu nedenle R’da özellikle tam sayıları ifade etmek için L harfi kullanılır.

kilo <- 68L
kilo
class(kilo)

# Karmaşık veriler, karmaşık (kompleks) sayılar içindir. 
# Karmaşık sayıların imajiner z = a + bi şeklinde ifade edilir.

kompleks <- 5+2i
kompleks
class(kompleks)

# Karakter verileri, character ya da string tipinde olabilir. 
# Örneğin, ‘m’ harfi bir karakter iken ‘matematik’ bir string ifadedir. İkisi de karakter verisidir. 
# R’da genellikle ’ ’ karakterler için, ” ” ise string veriler için kullanılır.

karakter <- 'r'
string_ornek <- "intro to r programming language"
karakter
string_ornek

class(karakter)
class(string_ornek)

# Ham veriler, değerleri raw byte olarak ifade etmek için kullanılır. 
# Bunun için aşağıdaki iki fonksiyondan yararlanılır.

# charToRaw() - karakter datasını raw dataya çevirir.
# rawToChar() - raw datayı karakter datasına çevirir.

ornek_rawdata <- charToRaw("TUSAS")
ornek_rawdata
class(ornek_rawdata)

ornek_karakter <- rawToChar(ornek_rawdata)
ornek_karakter
class(ornek_karakter)