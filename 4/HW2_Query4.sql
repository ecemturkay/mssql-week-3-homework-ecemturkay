--4
SELECT u.urunAd, sp.adet FROM tblSiparisDetay AS sp 
INNER JOIN tblUrun AS u ON sp.urunKod = u.urunKod
INNER JOIN tblSiparis AS s ON sp.faturaKod = s.faturaKod
WHERE siparisTarih BETWEEN '01.02.2007' and '05.03.2014'
order by sp.adet;
