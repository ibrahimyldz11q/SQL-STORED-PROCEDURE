DELIMITTER //
CREATE PROCEDURE Getir()
BEGIN
--SQL KODLAR� BEGIN ARASINA YAZILIR	SELECT * FROM TABLE personel-
END//
DELIMITTER ;


CALL Getir()
-- personel tablosunda ki t�m verileri getirecektir

STORED PROCEDURE TOPLAMA/CARPMA/BOLME
--CAL�SANLARIN MAASLAR�NA 100TL EKLEME
-- EKLED�G�N�Z PARAMETLER�N VER� T�PLER� TABLONUZDAK� VER� T�PLER� �LE AYNI OLMASI LAZIM
-- AKS� TAK�DRDE SORUN �IKARTAB�L�R

DELIMITTER //
CREATE PROCEDURE Ekle(�N maasi int(11),�N idisi int(11))
BEGIN

UPDATE personle SET maas = maasi WHERE id =idisi;
END//
DELIMITTER ;

CALL Ekle(100)


STORED PROCEDUR �LE EKLEME YAPMA
--Yazd�g�n Parametrelerin veri tipleri tablonuzda ki veri tipleri ile ayn� olmas� gerekmektedir
--aksi takdirde sorunlarla kar��la�abilirsiniz

DELIMITTER //
CREATE PROCEDURE EKLEME (IN adi varchar(255), IN soyadi varchar(255), IN telefonu varchar(12), IN emaili varchar(50))
BEGIN
	INSERT INTO storedprocedure (ad,soyad,telefon,mail) 		VALUES(adi,soyadi,telefonu,maili);
END//
DELIMITTER ;


CALL EKLEME(Paramtere Degerleri G�rilecek)


STORED PROCEDURE �LE G�NCELLEMEYAPMA
--Yazd�g�n Parametrelerin veri tipleri tablonuzda ki veri tipleri ile ayn� olmas� gerekmektedir
--aksi takdirde sorunlarla kar��la�abilirsiniz

DELIMITER //
CREATE PROCEDURE G�ncelleme(IN adi varchar(255), IN soyadi varchar(255), IN telefonu varchar(12), IN emaili varchar(50),IN idi mediumint(8))
BEGIN

UPDATE storedprocedure SET ad = adi AND soyad = soyadi AND  telefon = telefonu AND  mail = emaili WHERE id = idi;
   
END//
DELIMITER ; 

STORED PROCEDURE S�LME
--Yazd�g�n Parametrelerin veri tipleri tablonuzda ki veri tipleri ile ayn� olmas� gerekmektedir
--aksi takdirde sorunlarla kar��la�abilirsiniz

DELIMITER //
CREATE PROCEDURE S�L(�N idisi int(11))
BEGIN
	DELETE FROM tabloismi where id = idisi;  

END//
DELIMITER ;

CALL EKLEME(1)'1,ci �d'yi Siler'

