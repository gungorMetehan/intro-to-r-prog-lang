# 8 - BASIT VERI GORSELLESTIRME

# x ve y vektorlerini olusturma (200 gozlem)
x <- rnorm(200) # rnorm() da ilk defa gordugumuz bir fonksiyon. Bu fonksiyon normal dagilimdan rastgele 200 deger cekiyor.
y <- x + rnorm(200)

# basit bir gorsellestirme
plot(x, y)

# ornek uygulama yapabilmek adina veri setlerinin ve bir fonksiyonun uretilmesi
x <- rnorm(200)
y <- x + rnorm(200)
faktor <- factor(mtcars$cyl)
fonksiyonM <- function(x) x^2 + 1

# grafiklerin birlikte gosterilmesi icin (2 satir, 2 sutun olacak sekilde)
par(mfrow = c(2, 2))

# sacilim grafigi
plot(x, y)

# sutun grafigi
plot(faktor)

# kutu grafigi
plot(faktor, rnorm(32))

# verilen bir fonksiyonun grafigi
plot(fonksiyonM, 0, 10)

# korelasyon tablosunun gorsellestirilmesi
plot(iris[, 1:4])

# grafiklerin yine eskisi gibi tek basina gosterilmesi icin ayarin duzeltilmesi
par(mfrow = c(1, 1))

# plot() fonksiyonu ile olusturulacak grafigin turu type argumani ile belirlenebilir.

# ornek uygulama icin veri setlerinin uretilmesi
x <- 1:15
y <- c(3, 4, 7, 11, 8, 9, 14, 2, 3, 4, 5, 6, 7, 10, 10)

# grafiklerin birlikte gosterilmesi icin (1 satir, 3 sutun)
par(mfrow = c(1, 3)) # bu kod calistirilmak zorunda degil. Sadece farkli turdeki grafiklerin type argumani ile nasil olusturuldugunu es zamanli ekranda gormek icin kullaniyoruz.

plot(x, y, type = "l")
plot(x, y, type = "s")
plot(x, y, type = "p")

par(mfrow = c(1, 1)) # ekranda surekli 3 grafik olusturulmamasi icin eski haline bu kod yardimi ile donuyoruz.

par(mfrow = c(1, 3))

plot(x, y, type = "o")
plot(x, y, type = "b")
plot(x, y, type = "h")

par(mfrow = c(1, 1)) # ekranda surekli 3 grafik olusturulmamasi icin eski haline bu kod yardimi ile donuyoruz.

par(mfrow = c(1, 3))

plot(x, y, type = "c")
plot(x, y, type = "S")
plot(x, y, type = "n")

par(mfrow = c(1, 1)) # ekranda surekli 3 grafik olusturulmamasi icin eski haline bu kod yardimi ile donuyoruz.

# Noktalarin Sekli: pch Argumani
# plot() fonksiyonunun icin pch argumani girilerek noktalarin sekli degistirilebilir.

x <- 1:10
y <- sample(x = 10:50, size = 10)

plot(x, y)
plot(x, y, pch = 23)
plot(x, y, pch = 24)

# col: renk, cex: buyukluk, bg: dis renk, lwd: kalinlik

x <- 1:10
y <- sample(x = 10:50, size = 10)

# Grafigin Basligi ve Alt Basligi

plot(x, y, pch = 24, col = "red", cex = 2.5, bg = "blue", lwd = 3)

plot(x, y, pch = 24, main = "Ana Baslik", adj = 0.75)
plot(x, y, pch = 24, main = "Ana Baslik", sub = "Alt Baslik ya da Aciklama")

plot(
  x, y, pch = 24,
  main = expression(alpha[1]^2 + frac(beta, 2) - pi * delta - epsilon + gamma^zeta - frac(eta, mu))
)

# Eksenler
x <- 1:10
y <- sample(x = 10:50, size = 10)

plot(x, y, xlab = "Yatay", ylab = "Dikey")
plot(x, y, xlab = "", ylab = "")
plot(x, y, xlab = "Yatay", ylab = "Dikey", ann = FALSE)

x <- 1:10
y <- sample(x = 10:50, size = 10)

par(mfrow = c(1, 3))
plot(x, y, xaxt = "n")
plot(x, y, yaxt = "n")
plot(x, y, xaxt = "n", yaxt = "n")
par(mfrow = c(1, 1)) # ekranda surekli 3 grafik olusturulmamasi icin eski haline bu kod yardimi ile donuyoruz.

x <- 1:10
y <- sample(x = 10:50, size = 10)

par(mfrow = c(2, 2))
plot(x, y, las = 0)
plot(x, y, las = 1)
plot(x, y, las = 2)
plot(x, y, las = 3)
par(mfrow = c(1, 1)) # ekranda surekli 3 grafik olusturulmamasi icin eski haline bu kod yardimi ile donuyoruz.

x <- 1:10
y <- sample(x = 10:50, size = 10)

plot(x, y, xlim = c(10, 60), ylim = c(0, 10))

# Yazi Tipi Ayarlari
x <- 1:10
y <- sample(x = 10:50, size = 10)

plot(
  x, y,
  main = "Ana Baslik",
  sub = "Alt Baslik ya da Aciklama",
  cex.main = 3,
  cex.sub = 1.2,
  cex.lab = 2,
  cex.axis = .75
)

x <- 1:10
y <- sample(x = 10:50, size = 10)

par(mfrow = c(1, 3))
plot(x, y, font = 2, main = "Kalin")
plot(x, y, font = 3, main = "Egik")
plot(x, y, font = 4, main = "Hem Kalin Hem Egik")
par(mfrow = c(1, 1)) # ekranda surekli 3 grafik olusturulmamasi icin eski haline bu kod yardimi ile donuyoruz.

x <- 1:10
y <- sample(x = 10:50, size = 10)

plot(
  x, y,
  main = "Baslik",
  sub = "Alt Baslik",
  font.main = 1,
  font.sub = 2,
  font.axis = 3,
  font.lab = 4
)

x <- 1:10
y <- sample(x = 10:50, size = 10)

plot(x, y)
text(2, 15, "Metin")
text(5, 35, "Diger Metin")

x <- 1:10
y <- sample(x = 10:50, size = 10)

plot(x, y)
text(2, 15, "Metin", family = "serif")
text(5, 40, "Diger Metin", family = "mono")

# Renklendirme
# Grafik uzerindeki noktalarin/cizgilerin renkleri plot() fonksiyonunun icine girilecek col argumani ile duzenlenebilir.

id <- 1:24
cinsiyet <- rep(c("Kiz", "Erkek"), 12)
puan <- sample(x = 50:100, size = 24)

data_sinif <- data.frame(id, cinsiyet, puan)

plot(id, data_sinif$puan, col = "orange")

# Farkli gruplara gore grafik uzerindeki renkler gruplandirilabilir.

plot(id, data_sinif$puan, col = factor(cinsiyet, levels = c("Kiz", "Erkek")))

# Ozel bir ayarlama yapilmadigi surece R, gruplara gore renklendirmeyi kendi ayarlarina gore yapar.
# Kullanici isterse sectigi renklerle grafigi cizdirebilir.

renkler1 <- c("darkgreen", "purple")
plot(
  id,
  data_sinif$puan,
  col = renkler1[factor(cinsiyet, levels = c("Kiz", "Erkek"))]
)

# R'da renkler icin HEX kodlari da kullanilabilir.
## TUSAS logo renkleri: Pantone 485 C (RGB: 211/20/14) ve Pantone Reflex Blue (RGB: 30/54/133)
renkler2 <- c("#dd150e", "#1e3685")
plot(
  id,
  data_sinif$puan,
  col = renkler2[factor(cinsiyet, levels = c("Kiz", "Erkek"))]
)

# Cizgi Ekleme
# plot() ile cizdirilen bir grafigin uzerine lines() fonksiyonu ile cizgi eklenebilir.

x <- 1:10
y <- sample(x = 10:50, size = 10)

plot(x, y)
lines(1:10, 30:39)

# lwd: cizgi kalinligi, col: cizgi rengi

x <- 1:10
y <- sample(x = 10:50, size = 10)

plot(x, y)
lines(1:10, 30:39, lwd = 4, col = "red")

# lty argumani ile cizginin sekli degistirilebilir (0–6).

x <- 1:10
y <- sample(x = 10:50, size = 10)

plot(x, y)
lines(1:10, 30:39, lwd = 4, col = "red", lty = 3)

# Metin Ekleme
# text() fonksiyonu ile grafige metin eklenebilir.

x <- 1:10
y <- sample(x = 10:50, size = 10)

plot(x, y)
text(1, 20, "Metin")

# text() icindeki iki sayi koordinatlari ifade eder.
# Veri noktalarina etiket eklemek de mumkundur.

x <- 1:10
y <- sample(x = 10:50, size = 10)

plot(x, y)
text(x, y, pos = 4) # pos argumani burada metnin pozisyonunu belirliyor. Diger sayilari girmeyi deneyebilirsiniz. Ornegin pos = 3.

# Lejant
# legend() fonksiyonu ile grafik alanina lejant eklenebilir.
## ekstra: TUSAS tek renk kullaniminda su iki rengi de tercih edebiliyor: 
## Pantone Black (RGB: 45/41/38) ve Pantone Cool Gray 11 (RGB: 112/111/111)
x <- 1:10
y <- sample(x = 10:50, size = 10)

plot(x, y)
lines(1:10, 30:39, lwd = 4, col = "#2d2926")
lines(1:10, 40:49, lwd = 4, col = "#706f6f")
legend(
  "bottomright",
  legend = c("aciklama 1", "aciklama 2"),
  lwd = 3,
  col = c("#2d2926", "#706f6f")
)

# Grafik Alaninin Cevresi
# bty argumani ile grafik alaninin cevresi duzenlenebilir.

x <- 1:10
y <- sample(x = 10:50, size = 10)

par(mfrow = c(2, 3))

plot(x, y, bty = "o", main = "bty = 'o'")
plot(x, y, bty = "l", main = "bty = 'l'")
plot(x, y, bty = "7", main = "bty = '7'")
plot(x, y, bty = "c", main = "bty = 'c'")
plot(x, y, bty = "u", main = "bty = 'u'")
plot(x, y, bty = "]", main = "bty = ']'")

par(mfrow = c(1, 1)) # ekranda surekli 6 grafik olusturulmamasi icin eski haline bu kod yardimi ile donuyoruz.

# bty = "n" kullanildiginda grafik alanini cevreleyen kutu gosterilmez, sadece x ve y eksenleri kalir.
