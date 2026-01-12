# 4 - VERI YAPILARIYLA ISLEMLER
## Vektorlerde Islemler

# alti elemanli karakter tipinde bir vektor olusturma
meyveler <- c("elma", "cilek", "erik", "armut", "karpuz", "kiraz")
length(meyveler)

class(meyveler)
mode(meyveler)
typeof(meyveler)

assign("yeni_sayilar", c(1, 2, 3, 4, 5))
yeni_sayilar

meyveler <- c("elma", "cilek", "erik", "armut", "karpuz", "kiraz")

# vektorun icinden yalnizca bir eleman secme
meyveler[4]

# vektorun icinden birden fazla eleman secme
meyveler[c(3, 4)]

meyveler[c(2:5)]

meyveler <- c("elma", "cilek", "erik", "armut", "karpuz", "kiraz")
meyveler[4] <- "muz"
meyveler

meyveler <- c("elma", "cilek", "erik", "armut", "karpuz", "kiraz")
meyveler[-3]

meyveler[-c(3, 5)]

meyveler[-c(1:4)]

meyveler <- c("elma", "cilek", "erik", "armut", "karpuz", "kiraz")
meyveler[7] <- "kivi"
meyveler

meyveler <- c("elma", "cilek", "erik", "armut", "karpuz", "kiraz")
harf <- LETTERS[1:6]
names(meyveler) <- harf
meyveler

meyveler[3] ; meyveler["C"]


notlar <- c(70, 75, 65, 60, 35, 80, 80, 85, 90, 95, 80, 75, 60, 55)
ogrenciler <- c("Ogr01", "Ogr02", "Ogr03", "Ogr04", "Ogr05", "Ogr06", "Ogr07", "Ogr08", 
                "Ogr09", "Ogr10", "Ogr11", "Ogr12", "Ogr13", "Ogr14")
names(notlar) <- ogrenciler
notlar

# notu 70'ten dusuk olan ogrencilerin listelenmesi (mantiksal degerler verir)
notlar < 70

# notu 70'ten dusuk olan ogrencilerin listelenerek bir nesneye atanmasi
telafiOgrenci <- notlar[notlar < 70]
telafiOgrenci

# notu ortalamadan yuksek olan ogrencilerin listelenerek bir nesneye atanmasi
ortalamadanYuksekOgrenci <- notlar[notlar > mean(notlar)]
ortalamadanYuksekOgrenci

# notu tam olarak 80'e esit olan ogrenciler kimlerdir? (Vektorun hangi elemanlaridir?)
which(notlar == 80)

boy <- c(175, 173, 170, 175, 188, 202, 168, 165, 155, 151, 168, 180, 170)
# boy uzunluklarinin toplanmasi
sum(boy)
# boy uzunluklarinin carpmasi
prod(boy)
# boy uzunluklarinin kucukten buyuge siralanmasi (Olagan arguman decreasing = F)
sort(boy)
sort(boy, decreasing = F)
# boy uzunluklarinin buyukten kucuge siralanmasi
sort(boy, decreasing = T)
# boy uzunluklarinin sirasinin tersine cevrilmesi
rev(boy)
# ortalama, ortanca, minimum deger, maksimum deger, ranj, standart sapma bulma
mean(boy); median(boy); min(boy); max(boy); range(boy); sd(boy)
# en buyuk ve en kucuk degerinin kacinci degerler oldugunu bulma
which.max(boy); which.min(boy)
# ozet betimsel istatistiklere ulasma
summary(boy)

# c() fonksiyonu ile vektor olusturma
boy <- c(175, 173, 170, 175, 188, 202, 168, 165, 155, 151, 168, 180, 170)
boy
# : isaretini kullanarak vektor olusturma
rakamlar <- 0:9
rakamlar
# assign() fonksiyonu ile vektor olusturma
assign("boy", c(175, 173, 170, 175, 188, 202, 168, 165, 155, 151, 168, 180, 170))
# 1'den 15'e kadar birer birer artan sayilar ile dizi olusturulmasi
seq(from = 1, to = 15, by = 1)
seq(1, 15, 1)
# length argumani ile belirli uzunlukta dizi olusturma
seq(from = 10, length = 16)
# by argumani ile artis miktarinin ayarlanmasi
seq(from = 5, to = 15, by = 2.5)
# length.out argumani ile belirli bir aralikta kac adet deger bulunacaginin ayarlanmasi
seq(from = 3, to = 7, length.out = 15)
# belirli sayidaki elemandan olusan bir vektorun rep() fonksiyonu ile tekrar ettirilmesi
rep(c(0:9), 2)
rep(c(0:9), times = 2)
# belirli sayidaki elemandan olusan bir vektorun rep() fonksiyonu ile sirayla tekrar ettirilmesi
rep(c(0:9), each = 2, times = 2)
# bir vektorun elemanlarinin sirayla istendigi kadar tekrar ettirilmesi
rep(c(1:5), c(1, 2, 3, 4, 5))

# Vektorlerde Aritmetik Islemler
vektor1 <- c(2, 3, 5, 7, 11, 13, 17, 23)
vektor2 <- c(2, 4, 6, 8, 10, 12, 14, 16)

vektor1 + vektor2
vektor2 - vektor1
vektor1 * vektor2
vektor2 / vektor1
vektor1 ^ vektor2

sqrt(vektor1)
sqrt((vektor1 * 2)^3) - vektor2

# eleman sayilari esit olmayan iki vektorun carpimini inceleyiniz
vektor3 <- c(1, 2, 3, 4)
vektor4 <- c(5, 6)
vektor3 * vektor4

vektor5 <- c(1, 2, 3)
vektor6 <- c(4, 5)
vektor5 * vektor6



## Faktorlerde Islemler

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


## Matrislerde Islemler

motivasyon_puani <- c(90, 80, 80, 80, 70, 40, 70, 50, 90, 80)
maas <- c(40000, 40000, 30000, 35000, 20000, 12000, 18000, 25000, 50000, 30000)

# sutun ekleme
matris1 <- cbind(motivasyon_puani, maas)
matris1

class(matris1)

# satir ekleme
matris2 <- rbind(motivasyon_puani, maas)
matris2

matris3 <- matrix(1:30, nrow = 5, ncol = 6, byrow = FALSE)
matris3

matris4 <- matrix(1:30, nrow = 5, ncol = 6)
matris4

matris5 <- matrix(1:30, nrow = 5, ncol = 6, byrow = TRUE)
matris5

# matrislerin birebir ayni olup olmadigini test etme
identical(matris3, matris4)
identical(matris4, matris5)

# Ayrica asagidaki matrisleri inceleyiniz.
matris6 <- matrix(1:30, 5)
matris6

matris7 <- matrix(1:30, 5, 6)
matris7

matris8 <- matrix(1:30, ncol = 6)
matris8

# sutun ekleme
matris9 <- cbind(matris8, 100:104)
matris9

dim(matris7)

# sutun ve satirlara isim verme
colnames(matris7) <- c("B1", "B2", "B3", "B4", "B5", "B6")
matris7

rownames(matris7) <- c("A1", "A2", "A3", "A4", "A5")
matris7

# sutun ve satirlara isim verme (paste() fonksiyonundan yararlanarak)
colnames(matris8) <- paste("A", c(1:6), sep = "")
matris8

rownames(matris8) <- paste("B", c(1:5), sep = "")
matris8

# ELEMAN SECME: matris7'yi ornek olarak ele alalim 
matris7
# matris7'den farkli sekillerde eleman secme
matris7[1, 3]
matris7[2, ]
matris7[, 3]
matris7[, "B3"]
# iki vektorun ayni olup olmadigini test etme
identical(matris7[, 3], matris7[, "B3"])
# matris7'den farkli sekillerde eleman secme
matris7[1:4, 2]
matris7[c(1, 5), 2]
matris7[3, c(1, 2, 4)]
matris7[-c(1, 4), 4]
matris7[-c(1), ]
matris7[-1, ]
matris7[matris7[, 1] > 2, 2]

# ARITMETIK ISLEMLER: matris7'yi ornek olarak ele alalim 
matris7
# matrise 5 eklenmesi
matris7 + 5
# 1'den bir matrisin cikarilmasi
1 - matris7
# matrisin bir sabit ile carpilmasi
3 * matris7
# matrisin karekokunun alinmasi
sqrt(matris7)
# bir matris, bir vektor ile carpilabilir
vektorA <- 1:6
matris7 * vektorA

# lineer cebir icin matrislerin olusturulmasi
m1 <- matrix(1:15, 3, 5)
m2 <- matrix(20:39, 5, 4)

# matrislerin carpilmasi
m1 %*% m2
# matrisin devriginin alinmasi
t(m1)
# matris ile devriginin carpilmasi
m1 %*% t(m1)

# m1 matrisinin olusturulmasi
m1 <- matrix(1:15, 3, 5)

# sutun toplamlari
colSums(m1)
# satir toplamlari
rowSums
# sutun ortalamalari
colMeans(m1)
# satir ortalamalari
rowMeans(m1)



## Dizilerde Islemler

# bir dizinin olusturulmasi
dizi1 <- array(rnorm(60, mean = 50, sd = 2), c(3, 4, 5))
dizi1

# bir dizinin satir ve sutun isimleriyle olusturulmasi
sutunAdlari <- c("C1", "C2", "C3", "C4")
satirAdlari <- c("S1", "S2", "S3")
matrisAdlari <- c("Matris1", "Matris2", "Matris3", "Matris4", "Matris5")

dizi2 <- array(
  1:60,
  dim = c(3, 4, 5),
  dimnames = list(satirAdlari, sutunAdlari, matrisAdlari)
)
dizi2

# tum matrislerin 3. satirlarini secmek
dizi2[3, , ]
# yalnizca 2. matrisin 3. satirini secmek
dizi2[3, , 2]
# yalnizca 1. matrisin 1. satirinin 3. sutunundaki elemani secmek
dizi2[1, 3, 1]
# 2. matrisi secmek
dizi2[, , 2]

# dizi2'ye yeni eleman eklenmesi
dizi2[, , 2] <- matrix(101:112, 3, 4)

# dizi2'nin yeni halinin incelenmesi
dizi2

## Listelerde Islemler
# karakterlerden ve sayilardan olusan vektorlerin olusturulmasi
personel <- c("Per01", "Per02", "Per03", "Per04", "Per05", "Per06", "Per07", "Per08", 
              "Per09", "Per10")
motivasyon_puani <- c(90, 80, 80, 80, 70, 40, 70, 50, 90, 80)
maas <- c(40000, 40000, 30000, 35000, 20000, 12000, 18000, 25000, 50000, 30000)

# listenin list() fonksiyonu ile olusturulmasi
liste1 <- list(personel, motivasyon_puani, maas)
liste1
str(liste1)

# liste2 nesnesinin olusturulmasi icin iki ayri vektorun olusturulmasi
sayilar <- 1:10
mantik <- c(T, F, F)
liste2 <- list(sayilar, mantik)

# liste3'e eklenecek olan harfler isimli vektorun olusturulmasi
harfler <- letters[1:20]

# liste3'un olusturulmasi
liste3 <- list(liste1, liste2, harfler)
liste3

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

personel <- c("Per01", "Per02", "Per03", "Per04", "Per05", "Per06", "Per07", "Per08", 
              "Per09", "Per10")
cinsiyet <- c("K", "E", "E", "E", "K", "K", "E", "E", "E", "K")
listeA <- list(personel, cinsiyet)
listeA

cinsiyet2 <- c("E", "E", "E", "E", "K", "K", "E", "E", "E", "K")
listeA[[2]] <- cinsiyet2
listeA


## Data Frame'lerde Islemler
matrisK <- matrix(1:12, 2, 6)
class(matrisK)

yenidata <- rbind(matrisK, c("elma", "cilek", "erik", "armut", "karpuz", "kiraz"))
yenidata
str(yenidata)

id <- 1:14
notlar <- c(70, 75, 65, 60, 35, 80, 80, 85, 90, 95, 80, 75, 60, 55)
ogrenciler <- c("Ogr01", "Ogr02", "Ogr03", "Ogr04", "Ogr05", "Ogr06", "Ogr07", "Ogr08", 
                "Ogr09", "Ogr10", "Ogr11", "Ogr12", "Ogr13", "Ogr14")

data1 <- data.frame(id, notlar, ogrenciler)
data1
class(data1)

data1[1, 3]
data1[2, ]
data1[, 3]

is.data.frame(data1[2, ])
is.data.frame(data1[, 3])
data1[, 3, drop = FALSE]
is.data.frame(data1[, 3, drop = FALSE])

data1[data1[2] > 75, ]
data1[data1[2] > 75 & data1[3] == "Ogr06", ]
subset(data1, ogrenciler == "Ogr06")
subset(data1, notlar > 75)

data1$gpa <- c(3.0, 3.3, 3.2, 4.0, 2.8, 3.3, 3.5, 3.4, 3.5, 3.1, 3.2, 2.9, 3.8, 3.3)

data1[["gpa2"]] <- c(3.0, 3.3, 3.2, 4.0, 2.8, 3.3, 3.5, 3.4, 3.5, 3.1, 3.2, 2.9, 3.8, 3.3)

yilsonu <- c(3.0, 3.3, 3.2, 4.0, 2.8, 3.3, 3.5, 3.4, 3.5, 3.1, 3.2, 2.9, 3.8, 3.3)
data1 <- cbind(data1, gpa3 = yilsonu)

names(data1) <- c("No", "Sinav Notu", "Ad Soyad", "GPA1", "GPA2", "GPA3")
data1

colnames(data1) <- c("Numara", "Not", "Isim", "GPA1", "GPA2", "GPA3")
data1

data(iris) # veri setini ice aktar
str(iris) # yapisini incele
head(iris) # ilk satirlarini incele
tail(iris) # son satirlarini incele
dim(iris) # boyutlarini incele
attributes(iris) # ozelliklerini incele
summary(iris) # ozet istatistiklerini incele
table(is.na(iris)) # hic kayip veri var mi?

# bazi sartlara gore alt kumeler olustur
subset(iris, Sepal.Width < 2.7)
subset(iris, Sepal.Width < 3 & Petal.Length > 4.5)
subset(iris, Sepal.Width < 3 | Petal.Length > 4.5)
as.character(iris$Species) # sadece Species vektorunu (bir sutun aslinda) karaktere cevir.
iris$new <- iris$Sepal.Length * iris$Petal.Length^2 - 1
head(iris, 10) # yeni iris veri setinin ilk 10 satirini incele
