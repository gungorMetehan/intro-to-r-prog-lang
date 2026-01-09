# 9 - YAYGIN HATALAR ve UYARILAR
## Hatalar (Errors)
### Tanımlı Olmayan Sütun

veriseti <- data.frame(V1 = c(6, 4, 5, 2, 5),
                       V2 = c(5, 5, 7, 8, 9),
                       V3 = c(2, 7, 9, 9, 7))

veriseti[veriseti$V1 > 4]

veriseti[veriseti$V1 > 4, ]

### Yazım Hataları

# aritmetik ortalama alma işlemi mean() fonksiyonu ile yapılmaktadır
maen(c(10, 40, 70))

# oluşturulan data frame'deki değişkenin ismi lengths_A'dır, lenghts_A değil
boyutlar <- data.frame(lengths_A = c(190, 181, 177, 170, 180),
                       widths_A = c(120, 115, 120, 130, 140))
boyutlar[, lenghts_A]

### if() Kullanımı

sayi <- 1:8
if(sayi > 5) {
  paste(sayi, "5'ten büyüktür.")
}

sayi <- 1:8
ifelse(sayi > 5,
       paste(sayi, "sayisi 5'ten büyüktür."),
       paste(sayi, "sayisi 5'ten büyük değildir."))

### Hatalı Argüman Kullanımı

rnorm(100, ss = 5)

### İndirilmemiş Paket

library(ltm)

## Uyarılar (Warnings)
### Farklı Uzunluklardaki Vektörler

dizi_A <- 3:11
dizi_B <- 2:15

# toplama işlemi gerçekleşecektir. 
# Ancak dizi_A'nın son elemanı (11), dizi_B'nin 9. elemanı (10) ile toplandıktan sonra
# dizi_B'nin 10. elemanı tekrar dizi_A'nın ilk elemanı ile toplanarak işlem devam eder.
dizi_A + dizi_B

### Standart Sapmanın Sıfır Oluşu

# 24 tane 50 değerinden oluşan bir vektör
sinif_1 <- rep(50, 24)
# ortalaması 50, standart sapması 5 olan normal dağılımdan seçilen 24 değerin üstündeki 
# kendine en yakın tam sayıya yuvarlanmış halinden oluşan, uzunluğu 24 olan bir vektör
sinif_2 <- ceiling(rnorm(24, mean = 50, sd = 5))

# cor() fonksiyonu ile korelasyonun hesaplanması
cor(sinif_1, sinif_2)