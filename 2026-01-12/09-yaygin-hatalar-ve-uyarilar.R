# 9 - YAYGIN HATALAR ve UYARILAR
## Hatalar (Errors)
### Tanimli Olmayan Sutun

veriseti <- data.frame(
  V1 = c(6, 4, 5, 2, 5),
  V2 = c(5, 5, 7, 8, 9),
  V3 = c(2, 7, 9, 9, 7)
)

veriseti[veriseti$V1 > 4]

veriseti[veriseti$V1 > 4, ]

### Yazim Hatalari

# aritmetik ortalama alma islemi mean() fonksiyonu ile yapilmaktadir
maen(c(10, 40, 70))

# olusturulan data frame'deki degiskenin ismi lengths_A'dir, lenghts_A degil
boyutlar <- data.frame(
  lengths_A = c(190, 181, 177, 170, 180),
  widths_A  = c(120, 115, 120, 130, 140)
)
boyutlar[, lenghts_A]

### if() Kullanimi

sayi <- 1:8
if (sayi > 5) {
  paste(sayi, "5'ten buyuktur.")
}

sayi <- 1:8
ifelse(
  sayi > 5,
  paste(sayi, "sayisi 5'ten buyuktur."),
  paste(sayi, "sayisi 5'ten buyuk degildir.")
)

### Hatali Arguman Kullanimi

rnorm(100, ss = 5)

### Indirilmemis Paket

library(ltm)

## Uyarilar (Warnings)
### Farkli Uzunluklardaki Vektorler

dizi_A <- 3:11
dizi_B <- 2:15

# toplama islemi gerceklesecektir.
# Ancak dizi_A'nin son elemani (11), dizi_B'nin 9. elemani (10) ile toplandiktan sonra
# dizi_B'nin 10. elemani tekrar dizi_A'nin ilk elemani ile toplanarak islem devam eder.
dizi_A + dizi_B

### Standart Sapmanin Sifir Olusu

# 24 tane 50 degerinden olusan bir vektor
sinif_1 <- rep(50, 24)

# ortalamasi 50, standart sapmasi 5 olan normal dagilimdan secilen 24 degerin
# ustundeki kendine en yakin tam sayiya yuvarlanmis halinden olusan,
# uzunlugu 24 olan bir vektor
sinif_2 <- ceiling(rnorm(24, mean = 50, sd = 5))

# cor() fonksiyonu ile korelasyonun hesaplanmasi
cor(sinif_1, sinif_2)
