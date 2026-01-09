# 8 - BASİT VERİ GÖRSELLEŞTİRME

# x ve y vektörlerini oluşturma (200 gözlem)
x <- rnorm(200)
y <- x + rnorm(200)

# basit bir görselleştirme
plot(x, y)

# örnek uygulama yapabilmek adına veri setlerinin ve bir fonksiyonun üretilmesi
x <- rnorm(200)
y <- x + rnorm(200)
faktor <- factor(mtcars$cyl)
fonksiyonM <- function(x) x^2 + 1

# grafiklerin birlikte gösterilmesi için (2 satır, 2 sütun olacak şekilde)
par(mfrow = c(2, 2))

# saçılım grafiği
plot(x, y)

# sütun grafiği
plot(faktor)

# kutu grafiği
plot(faktor, rnorm(32))

# verilen bir fonksiyonun grafiği
plot(fonksiyonM, 0, 10)

# korelasyon tablosunun görselleştirilmesi
plot(iris[, 1:4])

# grafiklerin yine eskisi gibi tek başına gösterilmesi için, az önce yapılan ayarın düzeltilmesi gerekiyor
par(mfrow = c(1, 1))

# plot() fonksiyonu ile oluşturulacak grafiğin türü type argümanı ile belirlenebilir.

# örnek uygulama yapabilmek adına veri setlerinin üretilmesi
x <- 1:15
y <- c(3, 4, 7, 11, 8, 9, 14, 2, 3, 4, 5, 6, 7, 10, 10)

# grafiklerin birlikte gösterilmesi için (1 satır, 3 sütun olacak şekilde)
par(mfrow = c(1, 3))

plot(x, y, type = "l")
plot(x, y, type = "s")
plot(x, y, type = "p")

# grafiklerin yine eskisi gibi tek başına gösterilmesi için, az önce yapılan ayarın düzeltilmesi gerekiyor
par(mfrow = c(1, 1))

# grafiklerin birlikte gösterilmesi için (1 satır, 3 sütun olacak şekilde)
par(mfrow = c(1, 3))

plot(x, y, type = "o")
plot(x, y, type = "b")
plot(x, y, type = "h")

# grafiklerin yine eskisi gibi tek başına gösterilmesi için, az önce yapılan ayarın düzeltilmesi gerekiyor
par(mfrow = c(1, 1))

# grafiklerin birlikte gösterilmesi için (1 satır, 3 sütun olacak şekilde)
par(mfrow = c(1, 3))

plot(x, y, type = "c")
plot(x, y, type = "S")
plot(x, y, type = "n")

# grafiklerin yine eskisi gibi tek başına gösterilmesi için, az önce yapılan ayarın düzeltilmesi gerekiyor
par(mfrow = c(1, 1))

# Noktaların Şekli: pch Argümanı
plot() fonksiyonunun için pch argümanı girilerek gösterimi yapılan noktaların şekli değiştirilebilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y)

plot(x, y, pch = 23)
plot(x, y, pch = 24)

# pch argümanına ek olarak eklenebilecek col argümanı ile noktaların rengi, cex argümanı ile noktaların büyüklüğü, 
# bg argümanı ile noktaların dışındaki şeklin rengi ve lwd argümanı ile bu şeklin kalınlığı ayarlanabilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

# Grafiğin Başlığı ve Alt Başlığı
# Grafiklere bir başlık ve alt başlık eklenebilir. 
# Bunun için plot() fonksiyonunun için main ve sub argümanları girilmelidir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y, pch = 24, col = "red", cex = 2.5, bg = "blue", lwd = 3)

# adj argümanı ile başlığın yeri değiştirilebilir
plot(x, y, pch = 24, main = "Ana Başlık", adj = 0.75)
plot(x, y, pch = 24, main = "Ana Başlık", sub = "Alt Başlık ya da Açıklama")

# Başlıkta matematiksel gösterimle tercih edilirken expression() fonksiyonundan yararlanılabilir
plot(x, y, pch = 24, main = expression(alpha[1] ^ 2 + frac(beta, 2) - pi*delta - epsilon + gamma^zeta - frac(eta, mu)))

# Eksenler
# Grafik çizilirken yatay eksenin ismi x vektörünün, dikey eksenin ismi ise y vektörünün ismi olarak alınır. 
# Ancak kullanıcı isterse bu eksenlerin ismini xlab ve ylab argümanları ile değiştirebilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y, xlab = "Yatay", ylab = "Dikey")

# Eksenlerin isminin görünmemesi istendiğinde tırnak işaretlerinin içi boş bırakılır.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y, xlab = "", ylab = "")

# ann argümanına FALSE değeri girilerek de eksen isimleri devre dışı bırakılabilir
plot(x, y, xlab = "Yatay", ylab = "Dikey", ann = FALSE)

# Eksenlerde yer alan değerler xaxt ve yaxt argümanları ile silinebilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

par(mfrow = c(1, 3))
plot(x, y, xaxt = "n")
plot(x, y, yaxt = "n")
plot(x, y, xaxt = "n", yaxt = "n")

par(mfrow = c(1, 1))

# Eksenlerde yer alan değerlerin yönü las argümanı ile düzenlenebilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

par(mfrow = c(2, 2))

plot(x, y, las = 0)
plot(x, y, las = 1)
plot(x, y, las = 2)
plot(x, y, las = 3)

par(mfrow = c(1, 1))

# Eksenlerin limitleri xlim ve ylim argümanları ile düzenlenebilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y, xlim = c(10, 60), ylim = c(0, 10))

# Yazı Tipi Ayarları
# cex.main, cex.sub, cex.lab ve cex.axis argümanları ile grafiğin başlığının, alt başlığının, 
# eksen isimlerinin ve eksen değerlerinin büyüklükleri değiştirilebilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y, main = "Ana Başlık", sub = "Alt Başlık ya da Açıklama",
     cex.main = 3,
     cex.sub = 1.2,
     cex.lab = 2,
     cex.axis = .75)

# font argümanı ile yazı tipi kalın, eğik ve hem kalın hem eğik olarak ayarlanabilir. 
# Bu ayar ile başlık, alt başlık gibi kısımlarda bir değişiklik olmaz.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

par(mfrow = c(1, 3))

plot(x, y, font = 2, main = "Kalın")
plot(x, y, font = 3, main = "Eğik")
plot(x, y, font = 4, main = "Hem Kalın Hem Eğik")

par(mfrow = c(1, 1))

# Diğer kısımların yazı tiplerini değiştirmek için font.main, font.sub, font.lab ve font.axis argümanları kullanılabilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y, main = "Başlık", sub = "Alt Başlık",
     font.main = 1,
     font.sub  = 2,
     font.axis = 3,
     font.lab  = 4)

# text argümanı ile grafiğin içine yazı/metin eklenebilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y)
text(2, 15, "Metin")
text(5, 35, "Diğer Metin")

# family argümanı kullanılarak yazı tipi değiştirilebilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y)
text(2, 15, "Metin", family = "serif")
text(5, 40, "Diğer Metin", family = "mono")

# Renklendirme
# Grafik üzerindeki noktaların/çizgilerin renkleri plot() fonksiyonunun içine girilecek col argümanı ile düzenlenebilir.

id <- 1:24
cinsiyet <- rep(c("Kiz", "Erkek"), 12)
puan <- sample(x = 50:100, size  = 24)

data_sinif <- data.frame(id, cinsiyet, puan)

plot(id, data_sinif$puan, col = "orange")

# Farklı gruplara göre grafik üzerindeki renkler gruplandırılabilir.

plot(id, data_sinif$puan, col = factor(cinsiyet, levels = c("Kiz", "Erkek")))

# Özel bir ayarlama yapılmadığı sürece R, gruplara göre renklendirmeyi kendi olağan ayarlarına göre yapacaktır. 
# Bu noktada, kullanıcı isterse seçtiği renklerle grafiği çizdirebilir.

renkler1 <- c("red", "blue")
plot(id, data_sinif$puan, col = renkler1[factor(cinsiyet, levels = c("Kiz", "Erkek"))])

# R’da ayrıca renkler için HEX kodları da kullanılabilir. 
# Yani ‘green’, ‘red’, ‘blue’ gibi renkler dışında HEX kodunu bildiğiniz bir rengi de grafiklerde kullanabilirsiniz.

renkler2 <- c("#00B5A7", "#FF80FB")
plot(id, data_sinif$puan, col = renkler2[factor(cinsiyet, levels = c("Kiz", "Erkek"))])

# Çizgi Ekleme
# plot() fonksiyonu ile çizdirilen bir grafiğin üzerine lines() fonksiyonu ile çizgi (doğru parçası) çizilebilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y)
lines(1:10, 30:39)

# lwd argümanı ile çizginin kalınlığı, col argümanı ile de çizginin rengi değiştirilebilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y)
lines(1:10, 30:39, lwd = 4, col = "red")

# lty argümanı ile çizginin şekli değiştirilebilir. 
# lty argümanına 0’dan 6’ya kadar yedi farklı değer girilebilir. 1 değeri olağan ayardır ve düz çizgi çizmek için kullanılır. 2 ile kısa çizgili, 3 ile noktalı, 4 ile nokta ve kısa çizgili, 5 ile uzun çizgili ve 6 ile uzun ve kısa çizgili çizgi şekli belirleme yapılabilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y)
lines(1:10, 30:39, lwd = 4, col = "red", lty = 3)

# Metin Ekleme
# text() fonksiyonu ile çizdirilen grafiğe metin eklenebilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y)
text(1, 20, "Metin")

# text() fonksiyonunun içine girilen iki sayısal değer koordinatları ifade etmektedir. 
# Yukarıdaki örnekte x=1, y=20 olarak belirlenen noktaya ‘Metin’ ifadesinin yazılması istenmiştir. 
# Ayrıca yine text() fonksiyonu ile veri noktalarının etiketleri yazdırılabilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y)
text(x, y, pos = 4)

# Lejant
# legend() fonksiyonu ile grafik alanına lejant girilebilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

plot(x, y)
lines(1:10, 30:39, lwd = 4, col = "red")
lines(1:10, 40:49, lwd = 4, col = "green")
legend("bottomright", legend = c("aciklama 1", "aciklama 2"),
       lwd = 3, col = c("red", "green"))

# Grafik Alanının Çevresi
# plot() fonksiyonunun içine girilecek bty argümanı ile grafik alanının çevresinin şekli değiştirilebilir. 
# Bu argümanın değerleri o, l, 7, c, u, ] veya n olabilir.

x <- 1:10
y <- sample(x = 10:50, size  = 10)

par(mfrow = c(2, 3))

plot(x, y, bty = "o", main = "bty = 'o'")
plot(x, y, bty = "l", main = "bty = 'l'")
plot(x, y, bty = "7", main = "bty = '7'")
plot(x, y, bty = "c", main = "bty = 'c'")
plot(x, y, bty = "u", main = "bty = 'u'")
plot(x, y, bty = "]", main = "bty = ']'")

par(mfrow = c(1, 1))

# bty argümanının içine n (none) girildiğinde grafik alanını çevreleyen bir kutu oluşmaz. 
# Sadece x ve y eksenlerinin değerleri yer alır.