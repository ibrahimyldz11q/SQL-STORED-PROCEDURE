DELIMITTER //
CREATE PROCEDURE Getir()
BEGIN
--SQL KODLARİ BEGIN ARASINA YAZILIR	SELECT * FROM TABLE personel-
END//
DELIMITTER ;


CALL Getir()
-- personel tablosunda ki tüm verileri getirecektir

STORED PROCEDURE TOPLAMA/CARPMA/BOLME
--CALİSANLARIN MAASLARİNA 100TL EKLEME
-- EKLEDİGİNİZ PARAMETLERİN VERİ TİPLERİ TABLONUZDAKİ VERİ TİPLERİ İLE AYNI OLMASI LAZIM
-- AKSİ TAKİDRDE SORUN ÇIKARTABİLİR

DELIMITTER //
CREATE PROCEDURE Ekle(İN maasi int(11),İN idisi int(11))
BEGIN

UPDATE personle SET maas = maasi WHERE id =idisi;
END//
DELIMITTER ;

CALL Ekle(100)


STORED PROCEDUR İLE EKLEME YAPMA
--Yazdıgın Parametrelerin veri tipleri tablonuzda ki veri tipleri ile aynı olması gerekmektedir
--aksi takdirde sorunlarla karşılaşabilirsiniz

DELIMITTER //
CREATE PROCEDURE EKLEME (IN adi varchar(255), IN soyadi varchar(255), IN telefonu varchar(12), IN emaili varchar(50))
BEGIN
	INSERT INTO storedprocedure (ad,soyad,telefon,mail) 		VALUES(adi,soyadi,telefonu,maili);
END//
DELIMITTER ;


CALL EKLEME(Paramtere Degerleri Gİrilecek)


STORED PROCEDURE İLE GÜNCELLEMEYAPMA
--Yazdıgın Parametrelerin veri tipleri tablonuzda ki veri tipleri ile aynı olması gerekmektedir
--aksi takdirde sorunlarla karşılaşabilirsiniz

DELIMITER //
CREATE PROCEDURE Güncelleme(IN adi varchar(255), IN soyadi varchar(255), IN telefonu varchar(12), IN emaili varchar(50),IN idi mediumint(8))
BEGIN

UPDATE storedprocedure SET ad = adi AND soyad = soyadi AND  telefon = telefonu AND  mail = emaili WHERE id = idi;
   
END//
DELIMITER ; 

STORED PROCEDURE SİLME
--Yazdıgın Parametrelerin veri tipleri tablonuzda ki veri tipleri ile aynı olması gerekmektedir
--aksi takdirde sorunlarla karşılaşabilirsiniz

DELIMITER //
CREATE PROCEDURE SİL(İN idisi int(11))
BEGIN
	DELETE FROM tabloismi where id = idisi;  

END//
DELIMITER ;

CALL EKLEME(1)'1,ci İd'yi Siler'

STORED PROCEDURE DEGİSİKLİK İCİN
DELIMITER //
ALTER PROCEDURE SİL(DEGİSTİRİLMEK İSTENİLEN ALANLAR)
BEGIN
	DEGİSTİRİLMEK İSTENİLEN ALANLAR 

END//
DELIMITER ;

STORED PROCEDURE SİLMEK İCİN

DROP OLUSTURDUGUNUZ PROCEDUR ADI

