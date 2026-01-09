# 4 - VERİ YAPILARIYLA İŞLEMLER
## Vektörlerde İşlemler

# altı elemanlı karakter tipinde bir vektör oluşturma
meyveler <- c("elma", "çilek", "erik", "armut", "karpuz", "kiraz")
length(meyveler)

class(meyveler)
mode(meyveler)
typeof(meyveler)

assign("yeni_sayilar", c(1, 2, 3, 4, 5))
yeni_sayilar

meyveler <- c("elma", "çilek", "erik", "armut", "karpuz", "kiraz")

# vektörün içinden yalnızca bir eleman seçme
meyveler[4]

# vektörün içinden birden fazla eleman seçme
meyveler[c(3, 4)]

meyveler[c(2:5)]


meyveler <- c("elma", "çilek", "erik", "armut", "karpuz", "kiraz")
meyveler[4] <- "muz"
meyveler

meyveler <- c("elma", "çilek", "erik", "armut", "karpuz", "kiraz")
meyveler[-3]

meyveler[-c(3, 5)]

meyveler[-c(1:4)]

meyveler <- c("elma", "çilek", "erik", "armut", "karpuz", "kiraz")
meyveler[7] <- "kivi"
meyveler

meyveler <- c("elma", "çilek", "erik", "armut", "karpuz", "kiraz")
harf <- LETTERS[1:6]
names(meyveler) <- harf
meyveler

meyveler[3] ; meyveler["C"]


notlar <- c(70, 75, 65, 60, 35, 80, 80, 85, 90, 95, 80, 75, 60, 55)
ogrenciler <- c("Ogr01", "Ogr02", "Ogr03", "Ogr04", "Ogr05", "Ogr06", "Ogr07", "Ogr08", 
                "Ogr09", "Ogr10", "Ogr11", "Ogr12", "Ogr13", "Ogr14")
names(notlar) <- ogrenciler
notlar

# notu 70'ten düşük olan öğrencilerin listelenmesi (mantıksal değerler verir)
notlar < 70

# notu 70'ten düşük olan öğrencilerin listelenerek bir nesneye atanması
telafiOgrenci <- notlar[notlar < 70]
telafiOgrenci

# notu ortalamadan yüksek olan öğrencilerin listelenerek bir nesneye atanması
ortalamadanYuksekOgrenci <- notlar[notlar > mean(notlar)]
ortalamadanYuksekOgrenci

# notu tam olarak 80'e eşit olan öğrenciler kimlerdir? (Vektörün hangi elemanlarıdır?)
which(notlar == 80)

boy <- c(175, 173, 170, 175, 188, 202, 168, 165, 155, 151, 168, 180, 170)
# boy uzunluklarının toplanması
sum(boy)
# boy uzunluklarının çarpılması
prod(boy)
# boy uzunluklarının küçükten büyüğe sıralanması (Olağan argüman decreasing = F)
sort(boy)
sort(boy, decreasing = F)
# boy uzunluklarının büyükten küçüğe sıralanması
sort(boy, decreasing = T)
# boy uzunluklarının sırasının tersine çevrilmesi
rev(boy)
# ortalama, ortanca, minimum değer, maksimum değer, ranj, standart sapma bulma
mean(boy); median(boy); min(boy); max(boy); range(boy); sd(boy)
# en büyük ve en küçük değerinin kaçıncı değerler olduğunu bulma
which.max(boy); which.min(boy)
# özet betimsel istatistiklere ulaşma
summary(boy)

# c() fonksiyonu ile vektör oluşturma
boy <- c(175, 173, 170, 175, 188, 202, 168, 165, 155, 151, 168, 180, 170)
boy
# : işaretini kullanarak vektör oluşturma
rakamlar <- 0:9
rakamlar
# assign() fonksiyonu ile vektör oluşturma
assign("boy", c(175, 173, 170, 175, 188, 202, 168, 165, 155, 151, 168, 180, 170))
# 1'den 15'e kadar birer birer artan sayılar ile dizi oluşturulması
seq(from = 1, to = 15, by = 1)
seq(1, 15, 1)
# length argümanı ile belirli uzunlukta dizi oluşturma
seq(from = 10, length = 16)
# by argümanı ile artış miktarının ayarlanması
seq(from = 5, to = 15, by = 2.5)
# length.out argümanı ile belirli bir aralıkta kaç adet değer bulunacağının ayarlanması
seq(from = 3, to = 7, length.out = 15)
# belirli sayıdaki elemandan oluşan bir vektörün rep() fonksiyonu ile tekrar ettirilmesi
rep(c(0:9), 2)
rep(c(0:9), times = 2)
# belirli sayıdaki elemandan oluşan bir vektörün rep() fonksiyonu ile sırayla tekrar ettirilmesi
rep(c(0:9), each = 2, times = 2)
# bir vektörün elemanlarının sırayla istendiği kadar tekrar ettirilmesi
rep(c(1:5), c(1, 2, 3, 4, 5))

# Vektörlerde Aritmetik İşlemler
vektor1 <- c(2, 3, 5, 7, 11, 13, 17, 23)
vektor2 <- c(2, 4, 6, 8, 10, 12, 14, 16)

vektor1 + vektor2

vektor2 - vektor1

vektor1*vektor2

vektor2/vektor1

vektor1^vektor2

sqrt(vektor1)

sqrt((vektor1*2)^3) - vektor2

# eleman sayıları eşit olmayan iki vektörün çarpımını inceleyeniz.

vektor3 <- c(1, 2, 3, 4)
vektor4 <- c(5, 6)
vektor3*vektor4

vektor5 <- c(1, 2, 3)
vektor6 <- c(4, 5)
vektor5*vektor6



## Faktörlerde İşlemler

cinsiyet <- c("K", "K", "K", "E", "E", "K", "E", "K", "E")
class(cinsiyet)
cinsiyet <- factor(cinsiyet)
cinsiyet
class(cinsiyet)
cinsiyet2 <- c(0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1)
class(cinsiyet2)
cinsiyet2 <- factor(cinsiyet2)
cinsiyet2
class(cinsiyet2)

finalNotlari <- c("AA", "BB", "BA", "AA", "CC", "CC", "BA", "BB", "CB", "AA", "BA", "BB")
finalNotlari <- factor(finalNotlari)
finalNotlari

finalNotlari <- ordered(finalNotlari, levels = c("CC", "CB", "BB", "BA", "AA"))
finalNotlari



## Matrislerde İşlemler

motivasyon_puani <- c(90, 80, 80, 80, 70, 40, 70, 50, 90, 80)
maas <- c(40000, 40000, 30000, 35000, 20000, 12000, 18000, 25000, 50000, 30000)

# sütun ekleme
matris1 <- cbind(motivasyon_puani, maas)
matris1

class(matris1)

# satır ekleme
matris2 <- rbind(motivasyon_puani, maas)
matris2

matris3 <- matrix(1:30, nrow = 5, ncol = 6, byrow = FALSE)
matris3

matris4 <- matrix(1:30, nrow = 5, ncol = 6)
matris4

matris5 <- matrix(1:30, nrow = 5, ncol = 6, byrow = TRUE)
matris5

# matrislerin birebir aynı olup olmadığını test etme
identical(matris3, matris4)
identical(matris4, matris5)

# Ayrıca aşağıdaki matrisleri inceleyiniz.
matris6 <- matrix(1:30, 5)
matris6

matris7 <- matrix(1:30, 5, 6)
matris7

matris8 <- matrix(1:30, ncol = 6)
matris8

# sütun ekleme
matris9 <- cbind(matris8, 100:104)
matris9

dim(matris7)

# sütun ve satırlara isim verme
colnames(matris7) <- c("B1", "B2", "B3", "B4", "B5", "B6")
matris7

rownames(matris7) <- c("A1", "A2", "A3", "A4", "A5")
matris7

# sütun ve satırlara isim verme (paste() fonksiyonundan yararlanarak)
colnames(matris8) <- paste("A", c(1:6), sep = "")
matris8

rownames(matris8) <- paste("B", c(1:5), sep = "")
matris8

# ELEMAN SEÇME: matris7'yi örnek olarak ele alalım 
matris7
# matris7'den farklı şekillerde eleman seçme
matris7[1, 3]
matris7[2, ]
matris7[, 3]
matris7[, "B3"]
# iki vektörün aynı olup olmadığını test etme
identical(matris7[, 3], matris7[, "B3"])
# matris7'den farklı şekillerde eleman seçme
matris7[1:4, 2]
matris7[c(1, 5), 2]
matris7[3, c(1, 2, 4)]
matris7[-c(1, 4), 4]
matris7[-c(1), ]
matris7[-1, ]
matris7[matris7[, 1] > 2, 2]

# ARİTMETİK İŞLEMLER: matris7'yi örnek olarak ele alalım 
matris7
# matrise 5 eklenmesi
matris7 + 5
# 1'den bir matrisin çıkarılması
1 - matris7
# matrisin bir sabit ile çarpılması
3*matris7
# matrisin karekökünün alınması
sqrt(matris7)
# bir matris, bir vektör ile çarpılabilir
vektorA <- 1:6
matris7*vektorA

# lineer cebir için matrislerin oluşturulması
m1 <- matrix(1:15, 3, 5)
m2 <- matrix(20:39, 5, 4)

# matrislerin çarpılması
m1 %*% m2
# matrisin devriğinin alınması
t(m1)
# matris ile devriğinin çarpılması
m1 %*% t(m1)
# m1 matrisinin oluşturulması
m1 <- matrix(1:15, 3, 5)

# sütun toplamları
colSums(m1)
# satır toplamları
rowSums
# sütun ortalamaları
colMeans(m1)
# satır ortalamaları
rowMeans(m1)



## Dizilerde İşlemler
# bir dizinin oluşturulması
dizi1 <- array(rnorm(60, mean = 50, sd = 2), c(3, 4, 5))
dizi1

# bir dizinin oluşturulması satır ve sütun isimleriyle oluşturulması
sütunAdlari <- c("C1", "C2", "C3", "C4")
satirAdlari <- c("S1", "S2", "S3")
matrisAdlari <- c("Matris1","Matris2", "Matris3", "Matris4", "Matris5")
dizi2 <- array(1:60, dim = c(3, 4, 5), 
               dimnames = list(satirAdlari, sütunAdlari, matrisAdlari))
dizi2

# tüm matrislerin 3. satırlarını seçmek
dizi2[3,,]
# yalnızca 2. matrisin 3. satırını seçmek
dizi2[3,,2]
# yalnızca 1. matrisin 1. satırının 3. sütunundaki elemanı seçmek
dizi2[1, 3, 1]
# 2. matrisi seçmek
dizi2[,,2]

# dizi2'ye yeni eleman eklenmesi
dizi2[,,2] <- matrix(101:112, 3, 4)

# dizi2'nin yeni halinin incelenmesi
dizi2



## Listelerde İşlemler
# karakterlerden ve sayılardan oluşan vektörlerin oluşturulması
personel <- c("Per01", "Per02", "Per03", "Per04", "Per05", "Per06", "Per07", "Per08", 
              "Per09", "Per10")
motivasyon_puani <- c(90, 80, 80, 80, 70, 40, 70, 50, 90, 80)
maas <- c(40000, 40000, 30000, 35000, 20000, 12000, 18000, 25000, 50000, 30000)

# listenin list() fonksiyonu ile oluşturulması
liste1 <- list(personel, motivasyon_puani, maas)
liste1
str(liste1)
# liste2 nesnesinin oluşturulması için iki ayrı vektörün oluşturulması
sayilar <- 1:10
mantik <- c(T, F, F)
liste2 <- list(sayilar, mantik)

# liste3'e eklenecek olan harfler isimli vektörün oluşturulması
harfler <- letters[1:20]

# liste3'ün oluşturulması
liste3 <- list(liste1, liste2, harfler)
liste3

personel <- c("Per01", "Per02", "Per03", "Per04", "Per05", "Per06", "Per07", "Per08", 
              "Per09", "Per10")
motivasyon_puani <- c(90, 80, 80, 80, 70, 40, 70, 50, 90, 80)
maas <- c(40000, 40000, 30000, 35000, 20000, 12000, 18000, 25000, 50000, 30000)
liste_yeni <- list(Ad = personel, Motivasyon = motivasyon_puani, Ucret = maas)
liste_yeni

liste1[[2]]
liste1[[2]][1]
liste_yeni$Ad
liste_yeni$Ad[2]
liste_yeni$Ad[c(2, 4)]
liste_yeni$Ad[c(2:4)]
liste_yeni$Ad[2] <- "Per11"
liste_yeni$Ad

liste_yeni$Ad[2] <- "Per11"
liste_yeni$Ad

personel <- c("Per01", "Per02", "Per03", "Per04", "Per05", "Per06", "Per07", "Per08", 
              "Per09", "Per10")
cinsiyet <- c("K", "E", "E", "E", "K", "K", "E", "E", "E", "K")
listeA <- list(personel, cinsiyet)
listeA

cinsiyet2 <- c("E", "E", "E", "E", "K", "K", "E", "E", "E", "K")
listeA[[2]] <- cinsiyet2
listeA



## Data Frame'lerde İşlemler
matrisK <- matrix(1:12, 2, 6)
class(matrisK)
yenidata <- rbind(matrisK, c("elma", "çilek", "erik", "armut", "karpuz", "kiraz"))
yenidata
str(yenidata)

id <- 1:14
notlar <- c(70, 75, 65, 60, 35, 80, 80, 85, 90, 95, 80, 75, 60, 55)
ogrenciler <- c("Ogr01", "Ogr02", "Ogr03", "Ogr04", "Ogr05", "Ogr06", "Ogr07", "Ogr08", 
                "Ogr09", "Ogr10", "Ogr11", "Ogr12", "Ogr13", "Ogr14")

data1 <- data.frame(id, notlar, ogrenciler)
data1
class(data1)

x <- 100:103
y <- 10
M <- c(10, 11)
N <- c(4, 5, 6)

data.frame(x, y)

data.frame(x, N)

data.frame(M, N)

id <- 1:14
notlar <- c(70, 75, 65, 60, 35, 80, 80, 85, 90, 95, 80, 75, 60, 55)
ogrenciler <- c("Ogr01", "Ogr02", "Ogr03", "Ogr04", "Ogr05", "Ogr06", "Ogr07", "Ogr08", 
                "Ogr09", "Ogr10", "Ogr11", "Ogr12", "Ogr13", "Ogr14")

data1 <- data.frame(id, notlar, ogrenciler)
edit(data1)

id <- 1:14
notlar <- c(70, 75, 65, 60, 35, 80, 80, 85, 90, 95, 80, 75, 60, 55)
ogrenciler <- c("Ogr01", "Ogr02", "Ogr03", "Ogr04", "Ogr05", "Ogr06", "Ogr07", "Ogr08", 
                "Ogr09", "Ogr10", "Ogr11", "Ogr12", "Ogr13", "Ogr14")

data1 <- data.frame(id, notlar, ogrenciler)

data1[1, 3]
data1[2, ]
data1[, 3]
is.data.frame(data1[2, ])
is.data.frame(data1[, 3])
data1[, 3, drop = FALSE]
is.data.frame(data1[, 3, drop = FALSE])

# notu 75'ten yüksek olan öğrencilerin seçilmesi
data1[data1[2] > 75, ]
# notu 75'ten yüksek olan ve adı Eren olan öğrencilerin seçilmesi
data1[data1[2] > 75 & data1[3] == "Ogr06", ]
subset(data1, ogrenciler == "Ogr06")
subset(data1, notlar > 75)

# $ sembolünü kullanarak atama yapmak
data1$gpa <- c(3.0, 3.3, 3.2, 4.0, 2.8, 3.3, 3.5, 3.4, 3.5, 3.1, 3.2, 2.9, 3.8, 3.3)

# [[]] kullanarak atama yapmak
data1[["gpa2"]] <- c(3.0, 3.3, 3.2, 4.0, 2.8, 3.3, 3.5, 3.4, 3.5, 3.1, 3.2, 2.9, 3.8, 3.3)

# cbind() fonksiyonu ile atama yapmak
yilsonu <- c(3.0, 3.3, 3.2, 4.0, 2.8, 3.3, 3.5, 3.4, 3.5, 3.1, 3.2, 2.9, 3.8, 3.3)
data1 <- cbind(data1, gpa3 = yilsonu)

data1
str(data1)

names(data1) <- c("No", "Sınav Notu", "Ad Soyad", "GPA1", "GPA2", "GPA3")
data1

colnames(data1) <- c("Numara", "Not", "İsim", "GPA1", "GPA2", "GPA3")
data1

data(iris)
str(iris)
head(iris)
tail(iris)
dim(iris)
attributes(iris)
summary(iris)
table(is.na(iris))
subset(iris, Sepal.Width < 2.7)
subset(iris, Sepal.Width < 3 & Petal.Length > 4.5)
subset(iris, Sepal.Width < 3 | Petal.Length > 4.5)
as.character(iris$Species)
iris$new <- iris$Sepal.Length * iris$Petal.Length^2 - 1
head(iris, 10)