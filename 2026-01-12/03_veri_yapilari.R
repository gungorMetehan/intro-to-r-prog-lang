# 3 - VERİ YAPILARI
## Vektörler

# Vektör, aynı tür verilerin bir araya gelmesiyle oluşan tek boyutlu bir veri yapısıdır. 
# Vektörler sayısal, karakter ya da mantıksal verilerden oluşabilir. 
# R’da vektörleri oluşturmak için c() fonksiyonu kullanılabilir.

# üç farklı veri türünde vektör nesnelerin oluşturulması
sayisal <- c(5, 10, 15)
karakter <- c("x", "y", "z")
mantiksal <- c(TRUE, FALSE, TRUE)

# farklı tür veriler birleştirilirse ne olur
ornek1 <- c(30, "k", 5, "c")
ornek1
class(ornek1)

# farklı tür veriler birleştirilirse ne olur
ornek2 <- c(2, 5, TRUE, FALSE)
class(ornek2)

ornek3 <- c(2, 5, "Ankara")
class(ornek3)

# iki ayrı vektörün oluşturulması
sinif <- c("Yagiz", "Deniz", "Doruk", "Cagan", "Utku", "Sarp")
notlar <- c(90, 95, 100, 80, 90, 95)

# vektörün uzunluğunu bulmak için
length(sinif)

# vektörün türünü bulmak için
typeof(sinif)



## Faktörler

# Faktörler kategorik/kesikli/süreksiz veriler için kullanılır. 
# Faktör nesnelerinin aldığı değerlere düzey (level) denir. 
# Karakter veri türü çoğunlukla grafiklerin adlandırılması, satır veya sütun adlarının verilmesi gibi 
# amaçlar ile kullanılırken, faktörler veri setindeki süreksiz değişkenleri (variables) gösterir. 
# Faktörler analizlerde grupları gösterir. Faktörler karakter veri türünde ya da sayısal veri türünde olabilir.

# bir karakter vektörü oluşturma ve bunu faktöre dönüştürme
cinsiyetler <- c("erkek", "erkek", "erkek", "kadin", "erkek", "kadin", "kadin")
cinsiyetler <- factor(cinsiyetler)
cinsiyetler

# bir karakter vektörü oluşturma ve bunu düzeyleri olan bir faktöre dönüştürme
beden <- c("M", "M", "S", "S", "L")
beden <- ordered(beden, levels = c("S", "M", "L"))
beden



## Matrisler

# Matrisler, vektörler gibi tek bir tür veri içerir. 
# Buna karşın, vektörler tek boyutlu iken matrisler iki boyutlu veri yapılarıdır. 
# Matris oluşturmanın birden fazla yolu vardır. 
# Eşit uzunluktaki vektörler birleştirilerek matris oluşturulabilir. 
# Sütunların birleştirilmesi için cbind(), satırların birleştirilmesi için rbind() fonksiyonları kullanılır.

# öğrencilerin boyları için bir vektör, kiloları için başka bir vektör oluşturma
ogrenci_boy <- c(162, 168, 175, 182, 140)
ogrenci_kilo <- c(48, 50, 52, 55, 48)

mm_1 <- cbind(ogrenci_boy, ogrenci_kilo)
mm_1

mm_2 <- rbind(ogrenci_boy, ogrenci_kilo)
mm_2

class(mm_1) ; class(mm_2)

# byrow argümanına dikkat ederek matris oluşturulabilir.

matrix(1:20, nrow = 4, ncol = 5, byrow = F)

matrix(1:20, nrow = 4, ncol = 5, byrow = T)
matrix(1:20, nrow = 4)
matrix(1:20, ncol = 5)



## Diziler (Arrays)

# Diziler, vektörlerin ve matrislerin genelleştirilmiş halidir. 
# Vektörler tek, matrisler ise iki boyutlu dizilerdir. Diziler, tek tür veri içerebilir. 
# Dizi oluşturmak için array() fonksiyonundan yararlanılır.

# boş bir dizinin oluşturulması
array(data = NA, dim = length(data), dimnames = NULL)

array(1:24, dim = c(2, 3, 4))

vektor_a <- c(5, 9, 3)
vektor_b <- c(10, 11, 12, 13, 14, 15)
sonuc <- array(c(vektor_a, vektor_b), dim = c(3, 3, 2))
sonuc

## Listeler (Lists)

# Listeler vektörlere benzer ancak vektörlerden farklı olarak herhangi bir veri türünde veri içerebilir. 
# Esnek bir veri yapısıdır. Listelerde hem farklı türden, hem de farklı uzunlukta veriler yer alabilir. 
# Listeler list() fonksiyonu ile oluşturulabilir.

# bir listeye koymak için üç ayrı vektör oluşturma
ad <- c("Ad1", "Ad2", "Ad3", "Ad4", "Ad5", "Ad6")
boy <- c(180, 181, 188, 170, 172, 175, 181)
kilo <- c(80, 85, 55)

# üç vektörden oluşan bir liste oluşturma
liste <- list(ad, boy, kilo)
liste

# liste'nin yapısının incelenmesi
str(liste)

# liste isimli listeye iki vektör daha ekleme
liste2 <- list(liste, ilk3sayi = c(1, 2, 3), mantik = c(T, F, F, F, T))
liste2

# liste2'nin yapısının incelenmesi
str(liste2)



## Data Frame'ler

# R’da data frame’ler data.frame() fonksiyonu ile oluşturulabilir. 
# R’a farklı programlardan aktarılan veriler genelde data frame olarak kaydedilir. 
# Bu data frame’ler matrislere çok benzer, ancak data frame’lerde farklı sütunlarda yer alan veriler 
# farklı türlerde olabilir. Matrislerde tüm veriler aynı tür olmak zorundadır. 

# süper lig 2022-2023 sezonunun sonuç tablosundaki ilk 6 takımdan oluşan data frame'i oluşturalım
takim <- c("galatasaray", "fenerbahce", "besiktas", "adana demirspor", "basaksehir", "trabzonspor")
gol <- c(83, 87, 78, 76, 54, 64)
puan <- c(88, 80, 78, 69, 62, 57)

dataFrame1 <- data.frame(takim, gol, puan)
dataFrame1

x <- 100:103
y <- 10
M <- c(10, 11)
N <- c(4, 5, 6)

# x dört; y ise bir elemanlıdır
data.frame(x, y)

# x dört; N ise üç elemanlıdır
data.frame(x, N)

# M iki; N ise üç elemanlıdır
data.frame(M, N)

View(dataFrame4)



## R'daki Hazır Veri Setleri

iris
mtcars

library(palmerpenguins)
head(penguins, 10)

# veri setinin çağırılması
data(Titanic)

# veri setinin istenen formata getirilmesi
library(tibble)
Titanic <- as_tibble(Titanic)
head(Titanic, 10)

data(airquality)
head(airquality, 10)



## Veri Yapıları Arasında Dönüşüm

### as.list()
sayilar <- c(10, 11, 12, 13, 17, 20)
sayilar
as.list(sayilar)

sayilar2 <- 1:6
yeni_sayilar <- data.frame(sayilar, sayilar2)
yeni_sayilar
as.list(yeni_sayilar)

### as.data.frame()
sayilar <- c(10, 11, 12, 13, 17, 20)
sayilar
as.data.frame(sayilar)

### as.matrix()
yeni_vektor <- 1:50
as.matrix(yeni_vektor)

yeni_sayilar
as.matrix(yeni_sayilar)

### as.vector()
yeni_sayilar
as.vector(yeni_sayilar)

