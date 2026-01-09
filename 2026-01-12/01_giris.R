# 1 - GİRİŞ

# R, harflerin büyüklüğüne küçüklüğüne duyarlıdır. 
# Yani bir nesnenin adı ‘M’, diğer nesnenin adı ‘m’ ise R, bu iki nesneyi farklı şekilde kaydetmiş olacaktır. 

m <- 2025
M <- 2025

# (diyez) sembolünün bulunduğu satırdaki sembolün sağında kalan kodlar R tarafından çalıştırılmaz. Bu sembol, genellikle yorum, hatırlatıcı eklemek için kullanılır.

# Satır komutları, yeni satırlar oluşturarak birbirinden ayrılır. 
# Bunun yanı sıra iki komutun arasına ; sembolü konularak da aynı satırda birden fazla komut çalıştırılabilir. 
# Ancak genellikle, daha okunabilir satır komutları için komutlar farklı satırlara yazılmaktadır.

abc <- 100 ; def <- 200

# Bir satır komutunu henüz tamamlamadan çalıştırdığınızda konsolda (console) + işareti belirir. 
# Bu işaret, komutun noksan olduğu anlamına gelir. 
# Bununla genelde bir fonksiyonun son kapatma parantezinin ‘)’ kullanılmadığı durumlarda karşılaşılır.

# R, satırdaki komutlarda fazladan konulan boşluklara duyarlı değildir. 
# Yalnızca bir kodun yazımında hatalı bir boşluk bırakıldığında bu fazlalık boşluk sıkıntı yaratabilir. 

a <- 1 + 2
b <- 1                 +       2

# R’da aynı işlem birden fazla şekilde gerçekleştirilebilir. 

# R’da bir nesne ismi sayı ile başlamamalıdır. 
# Nesneler adlandırılırken adlandırmaya harflerle başlanmalı, istenirse sonra rakam, 
# nokta (.) ya da alt çizgi (_) kullanılabilir. 
# Tek bir harften oluşan nesneler oluşturulabilse de, nesnelere F ve T harfleri verilmemelidir.


# R, hesap makinesi olarak kullanılabilir. Dört işlem +, -, *, / sembollerinin yardımı ile yapılmaktadır.


# ATAMA

x <- c(12, 91, 6, 19)
x

x = c(12, 91, 6, 19)
x

c(12, 91, 6, 19) -> x
x

assign("x", c(12, 91, 6, 19))
x