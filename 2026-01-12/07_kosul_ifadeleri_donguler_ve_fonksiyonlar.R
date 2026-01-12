# 7 - KOSUL IFADELERI, DONGULER ve FONKSIYONLAR

## Kosul Ifadeleri
### if() Kosul Ifadesi
deger <- 175 
if (deger >= 160) { 
  print("Yeterli") 
}

if (deger >= 176) { 
  print("Yeterli") 
}

### else() Kosul Ifadesi
deger <- 175 
if (deger >= 180) { 
  print("Yeterli") 
} else { 
  print("Yetersiz") 
}

### elseif() Kosul Ifadesi
p1 <- 0.37 
if(p1 >= 0.80) { 
  print("Cok Kolay")
} else if(p1 >= 0.60) { 
  print("Kolay") 
} else if(p1 >= 0.40) { 
  print("Orta") 
} else if(p1 >= 0.20) { 
  print("Zor")
} else if(p1 >= 0.00) { 
  print("Cok Zor") 
}

### ifelse() Kosul Ifadesi
deger <- 173 
ifelse(deger >= 175, "Yeterli", "Yetersiz")

degerler <- c(173, 170, 181, 189, 190, 191, 180, 171, 163, 166) 
ifelse(degerler >= 175, "Yeterli", "Yetersiz")

# ornegin ifelse() ile bir veri setindeki 99 degerleri yerine NA girilebilir. 
yeniveri <- c(2, 2, 2, 1, 1, 99, 1, 2) 
yeniveri2 <- ifelse(yeniveri == 99, NA, yeniveri) 
yeniveri2

ornekData <- data.frame(
  no = c(1:5), 
  isim = c("Kaan","Ata","Yamac","Okan","Serhat"), 
  maas = c(12000, 17000, 160000, 21000, 8500)
) 

ornekData2 <- ornekData 
ornekData2$maas <- ifelse(ornekData$maas >= 50000, "hatali giris", ornekData$maas) 

ornekData3 <- data.frame(ornekData$no, ornekData$isim, ornekData2$maas) 
ornekData3

colnames(ornekData3) <- c("No", "Ad", "Maas") 
ornekData3

## Donguler

# Donguler, programlama dillerinde siklikla kullanilan akis kontrolu (flow control) mekanizmasinin bir parcasidir. 
# R’da donguler for(), while() ve repeat() fonksiyonlari ile calistirilir.

### for Dongusu
x <- c(1:20) 
for (i in x) {
  print(i^2)
}

liste <- list(1:6, letters[1:4], c("AA", "BA", "BB", "CB", "CC")) 
liste

for(i in 1:length(liste)) {
  liste[[i]] <- rep(liste[[i]], 3)
} 
liste

# 6 satirdan 3 sutundan olusan bir data frame olusturalim
yeniVeri <- data.frame(
  S1 = c(1, 3, 5, 7, 9, 11),
  S2 = rep(1:3, 2),
  S3 = seq(from = 1, to = 20, length.out = 6)
)

# Bu data frame'e yeni bir sutun (S4) eklensin
for (i in 1:6) {
  yeniVeri$S4[i] <- yeniVeri$S1[i] + yeniVeri$S2[i] + yeniVeri$S3[i]
}
yeniVeri

for (i in 1:nrow(yeniVeri)) {
  yeniVeri$S4[i] <- yeniVeri$S1[i] + yeniVeri$S2[i] + yeniVeri$S3[i]
}
yeniVeri

# rowSums() kullanimi
yeniVeri$S4 <- rowSums(yeniVeri)
yeniVeri

# 9 satirdan 3 sutundan olusan bir data frame
yeniVeri2 <- data.frame(
  S1 = seq_len(9),
  S2 = seq.int(-4, 4),
  S3 = c(-1, 1, 1, -1, 1, -2, 2, 1, -1)^2
)
yeniVeri2

for (j in 1:ncol(yeniVeri2)) {
  yeniVeri2[, 3 + j] <- yeniVeri2[, j]^2
}
yeniVeri2

# test verileri
test_verisi_1 <- matrix(sample(c(1, 0), replace = TRUE, size = 50, prob = c(.40, .60)), 5, 10)
test_verisi_2 <- matrix(sample(c(1, 0), replace = TRUE, size = 50, prob = c(.50, .50)), 10, 10)
test_verisi_3 <- matrix(sample(c(1, 0), replace = TRUE, size = 50, prob = c(.50, .50)), 15, 10)

test_verisi <- list(test_verisi_1, test_verisi_2, test_verisi_3)

library(psychometric)

p_ind <- list()
for (i in 1:3) {
  p_ind[[i]] <- item.exam(test_verisi[[i]])
  print(p_ind[[i]][4])
}

matrisA <- round(matrix(runif(10, min = -2, max = 2), nrow = 5), 2) 
matrisA

for(i in 1:nrow(matrisA)) {
  for(j in 1:ncol(matrisA)) {
    print(paste("Her a icin", "i =", i, "ve", "j =", j, "iken", "deger", matrisA[i, j]))
  }
}


### while Dongusu

# for() dongulerinde tekrar sayisi vektorun eleman sayisi kadar iken 
# while() dongulerinde dongu sayisi icin bir ifade bulunmaz. while() dongusu if() durum cumlesinde oldugu gibi 
# verilen bir kosulun yanlis (FALSE) oldugu zamana kadar calisir.

sifir <- 0 
while (sifir < 5) {
  print(sifir) 
  sifir <- sifir + 1
}

while (sifir < 5) {
  sifir <- sifir + 1
  print(sifir)
}

### repeat Dongusu

# repeat() fonksiyonu ile belirlenen ifade bitirme komutuna kadar tekrar edilir. 
# Bu fonksiyon, donguyu bitirmeye yarayan break komutu ile birlikte kullanilir.

s <- 0 
repeat{
  s <- s + 10
  print(s)
  if(s == 100) break
}

## Temel Fonksiyon Yazimi

F_a <- function(x) {
  x - 1
}
girdiler <- c(10, 15, 20) 
ciktilar <- F_a(girdiler) 
ciktilar

usAlma <- function(x, u) {
  x^u
} 
usAlma(2, 6)

usAlma(2024, 0)

kupFonk <- function(a) {
  sonuc <- data.frame(Hacim = a^3, TabanAlani = a^2, AlanlarToplami = 6*a^2)
  print(sonuc)
} 
kupFonk(4)

# Birden fazla kup icin degerlerin elde edilmesi 
kupFonk2 <- function(a) {
  sonuc <- data.frame(Kenar = a, Hacim = a^3, TabanAlani = a^2, AlanlarToplami = 6*a^2)
  print(sonuc)
} 
kupFonk2(c(1, 2, 3, 4, 5))

## apply() Ailesi

# R’da istatistiksel analizler yapilirken matrislerin, listelerin veya veri setlerinin 
# her bir satirina ya da sutununa islemler uygulanmak istenebilir. 
# Bu durumda dongulerin kullanilmasi her zaman pratik olmayabilir. 
# apply() ailesine ait fonksiyonlarla da satirlara ve sutunlara islemler uygulanabilir. 
# Bu ailede apply(), lapply(), sapply(), vapply(), mapply(), rapply() ve tapply() fonksiyonlari yer almaktadir. 
# Bunlar arasindan sik kullanilan dort tanesini inceleyelim.

### apply() Fonksiyonu
matris_a <- matrix(c(1:100), nrow = 20, ncol = 5) 
matris_a
apply(matris_a, 2, mean)
apply(matris_a, 1, max)

yenibirfonksiyon <- function(x) {
  (mean(x) + max(x)) * 10
} 
apply(matris_a, 2, yenibirfonksiyon)

apply(matris_a, 2, function(x) {(mean(x) + max(x)) * 10})

### lapply() Fonksiyonu
# lapply() fonksiyonu apply() fonksiyonunun listeler, vektorler ve veri setleri icin ozellestirilmis halidir.

aa <- c(1, 4, 9) 
bb <- c(16, 25, 36) 
liste_sayilar <- list(aa, bb) 
lapply(liste_sayilar, sqrt)

lapply(liste_sayilar, function(x) {mean(x)^2})

### sapply() Fonksiyonu
# sapply() fonksiyonu ile de lapply() fonksiyonunda oldugu gibi liste, veri setleri ve vektorler uzerinde 
# calisilir. sapply() fonksiyonunun temel amaci ciktilari basitlestirmektir.

aa <- c(1, 4, 9) 
bb <- c(16, 25, 36) 
liste_sayilar <- list(aa, bb) 

sapp <- sapply(liste_sayilar, sqrt) 
sapp
rowSums(sapp)

### tapply() Fonksiyonu
# tapply() fonksiyonu liste ve data frame turundeki nesnelere uygulandiginda sonucu vektor ya da liste seklinde verir.

ad <- c("oguz","sabahattin","yusuf", "tezer") 
cinsiyet <- c("E", "E", "E", "K") 
boy <- c(185, 170, 175, 165) 
cinsiyet <- factor(cinsiyet) 
yeniliste <- list(ad = ad, cinsiyet = cinsiyet, boy = boy) 

tapply(yeniliste$boy, yeniliste$cinsiyet, sort)
tapply(yeniliste$boy, yeniliste$ad, sort)

## Bazi Yarali Fonksiyonlar
data(iris)
iris_ornek <- head(iris, 10)
iris_ornek
dput(iris_ornek)

apropos("mean")

vektor_1 <- 1:5
vektor_2 <- seq(5)
identical(vektor_1, vektor_2)

solve(5, 20)

M1 <- matrix(c(4, 3, 1, -2), nrow = 2)
M2 <- matrix(c(13, 7), nrow = 2)
solve(M1, M2)

Sys.Date()
Sys.time()

mtcars
cor(mtcars[, 1:3])

## sub(), gsub() ve substr() Fonksiyonlari
sub("e", "*", "metehan")
gsub("e", "*", "metehan")
substr("metehan", 1, 4)

## grep() ve grepl() Fonksiyonlari
BAFTA_film <- read.csv("https://raw.githubusercontent.com/gungorMetehan/BAFTA/main/BAFTA_film.csv")

grep("la", BAFTA_film$film)
grepl("Drama", BAFTA_film$genres)
