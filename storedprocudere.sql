DELIMITTER //
CREATE PROCEDURE Getir()
BEGIN
--SQL KODLARÝ BEGIN ARASINA YAZILIR	SELECT * FROM TABLE personel-
END//
DELIMITTER ;


CALL Getir()
-- personel tablosunda ki tüm verileri getirecektir

STORED PROCEDURE TOPLAMA/CARPMA/BOLME
--CALÝSANLARIN MAASLARÝNA 100TL EKLEME
-- EKLEDÝGÝNÝZ PARAMETLERÝN VERÝ TÝPLERÝ TABLONUZDAKÝ VERÝ TÝPLERÝ ÝLE AYNI OLMASI LAZIM
-- AKSÝ TAKÝDRDE SORUN ÇIKARTABÝLÝR

DELIMITTER //
CREATE PROCEDURE Ekle(ÝN maasi int(11),ÝN idisi int(11))
BEGIN

UPDATE personle SET maas = maasi WHERE id =idisi;
END//
DELIMITTER ;

CALL Ekle(100)


STORED PROCEDUR ÝLE EKLEME YAPMA
--Yazdýgýn Parametrelerin veri tipleri tablonuzda ki veri tipleri ile ayný olmasý gerekmektedir
--aksi takdirde sorunlarla karþýlaþabilirsiniz

DELIMITTER //
CREATE PROCEDURE EKLEME (IN adi varchar(255), IN soyadi varchar(255), IN telefonu varchar(12), IN emaili varchar(50))
BEGIN
	INSERT INTO storedprocedure (ad,soyad,telefon,mail) 		VALUES(adi,soyadi,telefonu,maili);
END//
DELIMITTER ;


CALL EKLEME(Paramtere Degerleri GÝrilecek)


STORED PROCEDURE ÝLE GÜNCELLEMEYAPMA
--Yazdýgýn Parametrelerin veri tipleri tablonuzda ki veri tipleri ile ayný olmasý gerekmektedir
--aksi takdirde sorunlarla karþýlaþabilirsiniz

DELIMITER //
CREATE PROCEDURE Güncelleme(IN adi varchar(255), IN soyadi varchar(255), IN telefonu varchar(12), IN emaili varchar(50),IN idi mediumint(8))
BEGIN

UPDATE storedprocedure SET ad = adi AND soyad = soyadi AND  telefon = telefonu AND  mail = emaili WHERE id = idi;
   
END//
DELIMITER ; 

STORED PROCEDURE SÝLME
--Yazdýgýn Parametrelerin veri tipleri tablonuzda ki veri tipleri ile ayný olmasý gerekmektedir
--aksi takdirde sorunlarla karþýlaþabilirsiniz

DELIMITER //
CREATE PROCEDURE SÝL(ÝN idisi int(11))
BEGIN
	DELETE FROM tabloismi where id = idisi;  

END//
DELIMITER ;

CALL EKLEME(1)'1,ci Ýd'yi Siler'

