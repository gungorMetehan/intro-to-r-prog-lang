# 3 - VERI YAPILARI
## Vektorler

# Vektor, ayni tur verilerin bir araya gelmesiyle olusan tek boyutlu bir veri yapisidir. 
# Vektorler sayisal, karakter ya da mantiksal verilerden olusabilir. 
# R'da vektorleri olusturmak icin c() fonksiyonu kullanilabilir.

# uc farkli veri turunde vektor nesnelerin olusturulmasi
sayisal <- c(5, 10, 15)
karakter <- c("x", "y", "z")
mantiksal <- c(TRUE, FALSE, TRUE)

# farkli tur veriler birlestirilirse ne olur? (Numerik degerler ve karakter)
ornek1 <- c(30, "k", 5, "c")
ornek1
class(ornek1) # Olusan nesnenin turune bakalim.

# farkli tur veriler birlestirilirse ne olur? (Numerik ve mantiksal degerler)
ornek2 <- c(2, 5, TRUE, FALSE)
class(ornek2) # Olusan nesnenin turune bakalim.

ornek3 <- c(2, 5, "Ankara")
class(ornek3) # Olusan nesnenin turune bakalim.

# vektorun uzunlugunun bulunmasi
notlar <- c(90, 95, 100, 80, 90, 95)
length(notlar)

# vektorun turunu bulmak icin
typeof(notlar)


## Faktorler

# Faktorler kategorik/kesikli/sureksiz veriler icin kullanilir. 
# Faktor nesnelerinin aldigi degerlere duzey (level) denir. 
# Karakter veri turu cogunlukla grafiklerin adlandirilmasi, satir veya sutun adlarinin verilmesi gibi 
# amaclar ile kullanilirken, faktorler veri setindeki sureksiz degiskenleri (variables) gosterir. 
# Faktorler analizlerde gruplari gosterir. Faktorler karakter veri turunde ya da sayisal veri turunde olabilir.

# bir karakter vektoru olusturma ve bunu faktore donusturme
cinsiyetler <- c("erkek", "erkek", "erkek", "kadin", "erkek", "kadin", "kadin")
cinsiyetler <- factor(cinsiyetler)
cinsiyetler

# bir karakter vektoru olusturma ve bunu duzeyleri olan bir faktore donusturme
beden <- c("M", "M", "S", "S", "L")
beden <- ordered(beden, levels = c("S", "M", "L"))
beden

## Matrisler

# Matrisler, vektorler gibi tek bir tur veri icerir. 
# Buna karsin, vektorler tek boyutlu iken matrisler iki boyutlu veri yapilaridir. 
# Matris olusturmanin birden fazla yolu vardir. 
# Esit uzunluktaki vektorler birlestirilerek matris olusturulabilir. 
# Sutunlarin birlestirilmesi icin cbind(), satirlarin birlestirilmesi icin rbind() fonksiyonlari kullanilir.

# ogrencilerin boylari icin bir vektor, kilolari icin baska bir vektor olusturma
ogrenci_boy <- c(162, 168, 175, 182, 140)
ogrenci_kilo <- c(48, 50, 52, 55, 48)

mm_1 <- cbind(ogrenci_boy, ogrenci_kilo) # sutun olarak birlestir
mm_1

mm_2 <- rbind(ogrenci_boy, ogrenci_kilo) # satir olarak birlestir
mm_2

class(mm_1) ; class(mm_2) # iki farkli matrisin turleri nedir?

# byrow argumanina dikkat ederek matris olusturulabilir. Asagidaki kodlari calistirarak olusan dort farkli matrisi inceleyin.
matrix(1:20, nrow = 4, ncol = 5, byrow = F)
matrix(1:20, nrow = 4, ncol = 5, byrow = T)
matrix(1:20, nrow = 4)
matrix(1:20, ncol = 5)


## Diziler (Arrays)

# Diziler, vektorlerin ve matrislerin genellestirilmis halidir. 
# Vektorler tek, matrisler ise iki boyutlu dizilerdir. Diziler, tek tur veri icerebilir. 
# Dizi olusturmak icin array() fonksiyonundan yararlanilir.

# bos bir dizinin olusturulmasi
array(data = NA, dim = length(data), dimnames = NULL)

array(1:24, dim = c(2, 3, 4)) # 24 eleman matrislere neye gore dagitilmis? dim argumanina girilen degerleri inceleyiniz.

# iki ayri vektor kullanilarak bir dizi olusturulabilir
vektor_a <- c(5, 9, 3)
vektor_b <- c(10, 11, 12, 13, 14, 15)
sonuc <- array(c(vektor_a, vektor_b), dim = c(3, 3, 2))
sonuc


## Listeler (Lists)

# Listeler vektorlere benzer ancak vektorlerden farkli olarak herhangi bir veri turunde veri icerebilir. 
# Esnek bir veri yapisidir. Listelerde hem farkli turden, hem de farkli uzunlukta veriler yer alabilir. 
# Listeler list() fonksiyonu ile olusturulabilir.

# bir listeye eklemek icin uc ayri vektor olusturma
ad <- c("Ad1", "Ad2", "Ad3", "Ad4", "Ad5", "Ad6") # karakter vektoru
boy <- c(180, 181, 188, 170, 172, 175, 181) # numerik vektor
kilo <- c(80, 85, 55) # numerik vektor

# uc vektorden olusan bir liste olusturma
liste <- list(ad, boy, kilo)
liste

# liste'nin yapisinin incelenmesi
str(liste)

# liste isimli listeye iki vektor daha ekleme
liste2 <- list(liste, ilk3sayi = c(1, 2, 3), mantik = c(T, F, F, F, T))
liste2

# liste2'nin yapisinin incelenmesi
str(liste2)


## Data Frame'ler

# R'da data frame'ler data.frame() fonksiyonu ile olusturulabilir. 
# R'a farkli programlardan aktarilan veriler genelde data frame olarak kaydedilir. 
# Bu data frame'ler matrislere cok benzer, ancak data frame'lerde farkli sutunlarda yer alan veriler farkli turlerde olabilir. Matrislerde tum veriler ayni tur olmak zorundadir. 

# super lig 2022-2023 sezonunun sonuc tablosundaki ilk 6 takimdan olusan data frame'i olusturalim
takim <- c("galatasaray", "fenerbahce", "besiktas", "adana demirspor", "basaksehir", "trabzonspor")
gol <- c(83, 87, 78, 76, 54, 64)
puan <- c(88, 80, 78, 69, 62, 57)

dataFrame1 <- data.frame(takim, gol, puan) # bir karakter, iki ayrı numerik vektor bu fonksiyon ile birlestirilebilir
dataFrame1 # bu nesneyi olusturan vektorlerin uzunluklarinin esit olduguna dikkat ediniz.

# farkli uzunluklardaki vektorler birlestirilerek de data frame elde edilebilir mi?
x <- 100:103
y <- 10
M <- c(10, 11)
N <- c(4, 5, 6)

# x dort; y ise bir elemanlidir
data.frame(x, y)

# x dort; N ise uc elemanlidir
data.frame(x, N)

# M iki; N ise uc elemanlidir
data.frame(M, N)

# M iki, x ise dort elemanlidir
data.frame(M, x)


## R'daki Hazir Veri Setleri

iris # cicek veri seti
mtcars # araba veri seti

library(palmerpenguins) # palmerpenguins bir paket ismidir, ancak biz bu paket icindeki penguins isimli veri setini almak istiyoruz sadece.
head(penguins, 10)

# Titanic veri seti unlu bir veri setidir, ancak klasik bir data frame yapisinda degildir. Genelde analiz etmek icin birkac duzenleme yapmak gerekir.
# veri setinin cagrilmasi - data() fonksiyonu yardimi ile yapilir.
data(Titanic)

# veri setinin istenen formata getirilmesi
library(tibble)
Titanic <- as_tibble(Titanic)
head(Titanic, 10)

data(airquality) # hava durumu ile ilgili bir baska veri seti
head(airquality, 10)
tail(airquality, 5)


## Veri Yapilari Arasinda Donusum
# Veri yapilari eger sartlar uygun ise birbirine donusturulebilir.

### as.list() - listeye cevir
sayilar <- c(10, 11, 12, 13, 17, 20)
sayilar
as.list(sayilar)

sayilar2 <- 1:6
yeni_sayilar <- data.frame(sayilar, sayilar2)
yeni_sayilar
as.list(yeni_sayilar)

### as.data.frame() - data frame'e cevir
sayilar <- c(10, 11, 12, 13, 17, 20)
sayilar
as.data.frame(sayilar)

### as.matrix() - matrise cevir
yeni_vektor <- 1:50
as.matrix(yeni_vektor)

yeni_sayilar
as.matrix(yeni_sayilar)

### as.vector() - vektore cevir
yeni_sayilar
as.vector(yeni_sayilar)
