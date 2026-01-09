# 7 - KOŞUL İFADELERİ, DÖNGÜLER ve FONKSİYONLAR

## Koşul İfadeleri
### if() Koşul İfadesi
deger <- 175 
if (deger >= 160) { 
  print("Yeterli") 
}

if (deger >= 176) { 
  print("Yeterli") 
}

### else() Koşul İfadesi
deger <- 175 
if (deger >= 180) { 
  print("Yeterli") 
} else { 
  print("Yetersiz") 
}

### elseif() Koşul İfadesi
p1 <- 0.37 
if(p1 >= 0.80) { 
  print("Çok Kolay")
} else if(p1 >= 0.60) { 
  print("Kolay") 
} else if(p1 >= 0.40) { 
  print("Orta") 
} else if(p1 >= 0.20) { 
  print("Zor")
} else if(p1 >= 0.00) { 
  print("Çok Zor") 
}

### ifelse() Koşul İfadesi
deger <- 173 
ifelse(deger >= 175, "Yeterli", "Yetersiz")

degerler <- c(173, 170, 181, 189, 190, 191, 180, 171, 163, 166) 
ifelse(degerler >= 175, "Yeterli", "Yetersiz")

# örneğin ifelse() ile bir veri setindeki 99 değerleri yerine NA girilebilir. 
yeniveri <- c(2, 2, 2, 1, 1, 99, 1, 2) 
yeniveri2 <- ifelse(yeniveri == 99, NA, yeniveri) 
yeniveri2

ornekData <- data.frame(no = c (1:5), 
                        isim = c("Kaan","Ata","Yamaç","Okan","Serhat"), 
                        maas = c(12000, 17000, 160000, 21000, 8500)) 
ornekData2 <- ornekData 
ornekData2$maas <- ifelse(ornekData$maas >= 50000, "hatali giris", ornekData$maas) 
ornekData3 <- data.frame(ornekData$no, ornekData$isim, ornekData2$maas) 
ornekData3

colnames(ornekData3) <- c("No", "Ad", "Maas") 
ornekData3

## Döngüler

# Döngüler, programlama dillerinde sıklıkla kullanılan akış kontrolü (flow control) mekanizmasının bir parçasıdır. 
# R’da döngüler for(), while() ve repeat() fonksiyonları ile çalıştırılır.

### for Döngüsü
# bir vektör içindeki tüm elemanların karesini alma
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

# 6 satırdan 3 sütundan oluşan bir data frame oluşturalım
yeniVeri <- data.frame(S1 = c(1, 3, 5, 7, 9, 11),
                       S2 = rep(1:3, 2),
                       S3 = seq(from = 1, to = 20, length.out = 6))

# Bu data frame'e yeni bir sütun (S4) eklensin ve bu sütunda ilk üç sütundaki değerlerin toplamı gösterilsin
for (i in 1:6) {
  yeniVeri$S4[i] <- yeniVeri$S1[i] + yeniVeri$S2[i] + yeniVeri$S3[i]
  
}
yeniVeri

# aynı işlemi yaparken i indeksinin 1 ile 6 arasında dönmesi ile 1 ile nrow(yeniVeri) arasında dönmesi aynı anlama gelmektedir. Çünkü nrow() fonksiyonu içindeki data frame'in satır sayısını vermektedir
yeniVeri <- data.frame(S1 = c(1, 3, 5, 7, 9, 11),
                       S2 = rep(1:3, 2),
                       S3 = seq(from = 1, to = 20, length.out = 6))

for (i in 1:nrow(yeniVeri)) {
  yeniVeri$S4[i] <- yeniVeri$S1[i] + yeniVeri$S2[i] + yeniVeri$S3[i]
}
yeniVeri

# burada for döngüsü örneklendirilmeye çalışılmıştır. Ancak satırdaki değerlerin toplamı için daha basit bir komut R'da mevcuttur: rowSums()
yeniVeri <- data.frame(S1 = c(1, 3, 5, 7, 9, 11),
                       S2 = rep(1:3, 2),
                       S3 = seq(from = 1, to = 20, length.out = 6))

# for döngüsü kullanılmadan satırlardaki ya da sütunlardaki değerleri toplamak mümkündür. Benzer şekilde satırlardaki/sütunlardaki değerlerin çarpımı, ortalamasının, standart sapmasının alınması gibi pek çok işlem için R'da özel fonksiyonlar bulunmaktadır
yeniVeri$S4 <- rowSums(yeniVeri)
yeniVeri

# 9 satırdan 3 sütundan oluşan bir data frame oluşturalım
# not: seq_len() ve seq.int() fonksiyonlarını ayrı ayrı çalıştırarak nasıl birer vektör oluşturduklarını inceleyiniz.
yeniVeri2 <- data.frame(S1 = seq_len(9),
                        S2 = seq.int(-4, 4),
                        S3 = c(-1, 1, 1, -1, 1, -2, 2, 1, -1)^2)
yeniVeri2

# j indeksinin 1 ile 6 arasında dönmesi ile 1 ile ncol(yeniVeri2) arasında dönmesi aynı anlama gelmektedir. Çünkü ncol() fonksiyonu içindeki data frame'in sütun sayısını vermektedir
for (j in 1:ncol(yeniVeri2)) {
  yeniVeri2[, 3+j] <- yeniVeri2[, j]^2
}

yeniVeri2

# üç farklı test verisinin matris şeklinde oluşturulması
test_verisi_1 <- matrix(sample(c(1, 0), replace = TRUE, size = 50, prob = c(.40, .60)), 5, 10)
test_verisi_2 <- matrix(sample(c(1, 0), replace = TRUE, size = 50, prob = c(.50, .50)), 10, 10)
test_verisi_3 <- matrix(sample(c(1, 0), replace = TRUE, size = 50, prob = c(.50, .50)), 15, 10)

# üç farklı test verisinin bir listeye alınması
test_verisi <- list(test_verisi_1, test_verisi_2, test_verisi_3)

library(psychometric)
# boş bir listenin oluşturulması
p_ind <- list()

for (i in 1:3) {
  p_ind[[i]] <- item.exam(test_verisi[[i]])
  print(p_ind[[i]][4])
}

# boş bir listenin oluşturulması
p_ind <- list()

for (i in 1:3) {
  p_ind[[i]] <- item.exam(test_verisi[[i]])
  print(p_ind[[i]][4])
}

matrisA <- round(matrix(runif(10, min = -2, max = 2), nrow = 5), 2) 
matrisA

for(i in 1:nrow(matrisA)) {
  for(j in 1:ncol(matrisA)) {
    print(paste("Her a için", "i =", i, "ve", "j =", j, "iken", "değer", matrisA[i, j]))
  }
}


### while Döngüsü

# for() döngülerinde tekrar sayısı vektörün eleman sayısı kadar iken 
# while() döngülerinde döngü sayısı için bir ifade bulunmaz. while() döngüsü if() durum cümlesinde olduğu gibi 
# verilen bir koşulun yanlış (FALSE) olduğu zamana kadar çalışır.

sifir <- 0 
while (sifir < 5) {
  print(sifir) 
  sifir <- sifir + 1
}

while (sifir < 5) {
  sifir <- sifir + 1
  print(sifir)
}

### repeat Döngüsü

# repeat() fonksiyonu ile belirlenen ifade bitirme komutuna kadar tekrar edilir. 
# Bu fonksiyon, döngüyü bitirmeye yarayan break komutu ile birlikte kullanılır.

s <- 0 
repeat{
  s <- s + 10
  print(s)
  if(s == 100) break
}

## Temel Fonksiyon Yazımı

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

# Birden fazla küp için değerlerin elde edilmesi 
kupFonk2 <- function(a) {
  sonuc <- data.frame(Kenar = a, Hacim = a^3, TabanAlani = a^2, AlanlarToplami = 6*a^2)
  print(sonuc)
} 
kupFonk2(c(1, 2, 3, 4, 5))

## apply() Ailesi

# ’da istatistiksel analizler yapılırken matrislerin, listelerin veya veri setlerinin 
# her bir satırına ya da sütununa işlemler uygulanmak istenebilir. 
# Bu durumda döngülerin kullanılması her zaman pratik olmayabilir. 
# apply() ailesine ait fonksiyonlarla da satırlara ve sütunlara işlemler uygulanabilir. 
# Bu ailede apply(), lapply(), sapply(), vapply(), mapply(), rapply() ve tapply() fonksiyonları yer almaktadır. 
# Bunlar arasından sık kullanılan dört tanesini inceleyelim.

### apply() Fonksiyonu
matris_a <- matrix(c(1:100), nrow = 20, ncol = 5) 
matris_a
apply(matris_a, 2, mean)
apply(matris_a, 1, max)

yenibirfonksiyon <- function(x) {
  (mean(x)+max(x))*10
} 
apply(matris_a, 2, yenibirfonksiyon)

apply(matris_a, 2, function(x) {(mean(x)+max(x))*10})

### lapply() Fonksiyonu
# lapply() fonksiyonu apply() fonksiyonunun listeler, vektörler ve veri setleri için özelleştirilmiş halidir.

aa <- c(1, 4, 9) 
bb <- c(16, 25, 36) 
liste_sayilar <- list(aa, bb) 
lapply(liste_sayilar, sqrt)

lapply(liste_sayilar, function(x) {mean(x)^2})

### sapply() Fonksiyonu
# sapply() fonksiyonu ile de lapply() fonksiyonunda olduğu gibi liste, veri setleri ve vektörler üzerinde 
# çalışılır. sapply() fonksiyonunun temel amacı çıktıları basitleştirmektir. lapply() ile elde edilen çıktılar 
# liste biçiminde iken, sapply() ile elde edilen çıktılar daha çok vektör ya da vektörlerin özel halleri türündedir.

aa <- c(1, 4, 9) 
bb <- c(16, 25, 36) 
liste_sayilar <- list(aa, bb) 

sapp <- sapply(liste_sayilar, sqrt) 
sapp
rowSums(sapp)

### tapply() Fonksiyonu
# tapply() fonksiyonu liste ve data frame türündeki nesnelere uygulandığında sonucu vektör ya da liste şeklinde 
# vermektedir. Eğer tapply() içinde kullanılan fonksiyon tek bir değer veriyorsa çıktı vektör olur, 
# birden fazla değer veriyorsa çıktı liste olacaktır.

ad <- c("oguz","sabahattin","yusuf", "tezer") 
cinsiyet <- c("E", "E", "E", "K") 
boy <- c(185, 170, 175, 165) 
cinsiyet <- factor(cinsiyet) 
yeniliste <- list(ad = ad, cinsiyet = cinsiyet, boy = boy) 
# cinsiyete göre boy uzunluklarını küçükten büyüğe sıralanması (cinsiyet faktör idi) 
tapply(yeniliste$boy, yeniliste$cinsiyet, sort)

# adlara göre boy uzunluklarını küçükten büyüğe sıralanması 
tapply(yeniliste$boy, yeniliste$ad, sort)


## Bazı Yararlı Fonksiyonlar
data(iris)
iris_ornek <- head(iris, 10)
iris_ornek
dput(iris_ornek)

# help() fonksiyonu, adından anlaşılacağı üzere yardım fonksiyonudur. 
# Bu fonksiyon ya da ? ile R’daki fonksiyonlar, veri setleri ve diğer nesneler ile ilgili yardım sayfalarına 
# ulaşılabilir. Örneğin help(difTID, package = “difR”) satır komutu çalıştırılarak “difR” paketi içindeki 
# difTID() fonksiyonu ile ilgili bilgilere erişilebilir. Bunun yanı sıra, bir fonksiyon (örneğin lm() fonksiyonu) 
# ile ilgili detaylı bilgilere erişmek isteniyorsa help(lm), help(“lm”), ?lm ya da ?“lm” satır komutları 
# çalıştırılabilir. Ek olarak apropos() fonksiyonu ile isminin bir kısmı hatırlanan fonksiyonlar ve çalışma 
# alanına kayıtlı nesneler listelenebilir. Bu fonksiyonun içine yazılacak metin tırnak işareti içinde verilmelidir 
# ve fonksiyon büyük-küçük harfe duyarlı değildir.

apropos("mean")

# ls() fonksiyonunu kullanarak çalışma alanınıza kayıtlı tüm nesneleri listeleyebilirsiniz.

# rm() fonksiyonunu kullanarak çalışma alanınızda kayıtlı olan bir nesneyi silebilirsiniz. rm(list = ls()) komutunu çalıştırarak 
# çalışma alanınızda kayıtlı olan tüm nesneleri silebilirsiniz.

vektor_1 <- 1:5
vektor_2 <- seq(5)
identical(vektor_1, vektor_2)

# solve() fonksiyonu yardımıyla cebirsel eşitlikler çözümlenebilir. 
# Bu fonksiyon yardımıyla denklem sistemleri de çözülebilmektedir. Örneğin,  
# 5x = 20 eşitliğinde x’in kaç olduğu şu şekilde çözülebilmektedir:

solve(5, 20)

# 4x + y = 13
# 3x - 2y = 7 denklem sistemini çözelim.
# öncelikle denklemlerin çözümü için gerekli matrisleri oluşturalım, bu matrisler katsayılardan oluşacaktır.
M1 <- matrix(c(4, 3, 1, -2), nrow = 2)
M2 <- matrix(c(13, 7), nrow = 2)

# sonucu isteyelim.
solve(M1, M2)

Sys.Date()

Sys.time()

mtcars
cor(mtcars[, 1:3])

## sub(), gsub() ve substr() Fonksiyonları
# ilk e harfini * ile değiştirme
sub("e", "*", "metehan")
# tüm e harflerini * ile değiştirme
gsub("e", "*", "metehan")
# kelimenin 1, 2, 3, ve 4. karakterini seçme
substr("metehan", 1, 4)

## grep() ve grepl() Fonksiyonları
# örneklendirmek için bir veri seti içe aktaralım.
BAFTA_film <- read.csv("https://raw.githubusercontent.com/gungorMetehan/BAFTA/main/BAFTA_film.csv")

# grep() yardımıyla filmler arasında adında 'la' ifadesi geçen filmlerin indekslerini bulalım.
grep("la", BAFTA_film$film)

# grepl() yardımıyla film türleri arasında 'Drama' türünde olan filmleri bulmaya çalışalım.
grepl("Drama", BAFTA_film$genres)

# NOT: grep() ve grepl() fonksiyonları benzer amaçlarla kullanılsa da, çıktılarının farklı olduğu görülecektir. 
# grep() çıktı olarak ilgili satırların indekslerini verirken, grepl() her satırda aranan değerin bulunup 
# bulunmadığına ilişkin mantıksal değerleri (TRUE ya da FALSE) verir.