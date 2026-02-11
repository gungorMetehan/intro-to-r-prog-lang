# 1 - GIRIS

# R, harflerin buyuklugune kucuklugune duyarlidir (case-sensitive'dir. 
# Yani bir nesnenin adi 'M', diger nesnenin adi 'm' ise R, bu iki nesneyi farkli sekilde kaydetmis olacaktir. Iki nesne de Environment kismindan goruntulenebilir.

m <- 2026
M <- 2025

# (diyez) sembolunun bulundugu satirdaki sembolun saginda kalan kodlar R tarafindan calistirilmaz. 
# Bu sembol, genellikle yorum (comment), hatirlatici eklemek icin kullanilir.

# Satir komutlari, yeni satirlar olusturarak birbirinden ayrilir. 
# Bunun yani sira iki komutun arasina ; sembolu konularak da ayni satirda birden fazla komut calistirilabilir. 
# Ancak genellikle, daha okunabilir satir komutlari icin komutlar farkli satirlara yazilmaktadir.

abc <- 121 ; def <- 144 # Burada iki ayri nesne olusturulmaktadir, bir nesnenin adi abc, digerininki ise def'dir.

# Bir satir komutunu henuz tamamlamadan calistirdiginizda konsolda (console) + isareti belirir. Bu isaret, komutun noksan oldugu anlamina gelir. 
# Bununla genelde bir fonksiyonun son kapatma parantezinin ')' kullanilmadigi durumlarda karsilasilir.

# R, satirdaki komutlarda fazladan konulan bosluklara duyarlidir. Yalnizca bir kodun yaziminda hatali bir bosluk birakildiginda bu fazlalik bosluk sikinti yaratabilir. 

a <- 1 + 2
b <- 1                 +       2

# R'da ayni islem birden fazla sekilde gerceklestirilebilir. Ornegin, asagidaki komutlari calistiralim ve ne sonuclar dondugune bakalim.

c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
1:10
seq(1, 10, 1)

# R'da bir nesne ismi sayi ile baslamamalidir. 
# Nesneler adlandirilirken adlandirmaya harflerle baslanmali, istenirse sonra rakam, nokta (.) ya da alt cizgi (_) kullanilabilir. 
# Tek bir harften olusan nesneler olusturulabilse de, nesnelere F ve T harfleri verilmemelidir.

# R, hesap makinesi olarak kullanilabilir. Dort islem +, -, *, / sembollerinin yardimi ile yapilmaktadir. Bunu konsol (console) kisminda calistirmak daha uygun olabilir.

# ATAMA

x <- c(12, 91, 6, 19)
x

x = c(12, 91, 6, 19)
x

# Bu dort farkli yol ile atama yapilabiliyor olsa da, yukarida verilen ilk ikisi daha yaygindir.

c(12, 91, 6, 19) -> x
x

assign("x", c(12, 91, 6, 19))
x

# camel-case nesne isimlendirme: veriSeti, standartSapma, toplamPuan
# snake-case nesne isimlendirme: uzunluk_a, calisan_maas, personel_id, yeni_liste
