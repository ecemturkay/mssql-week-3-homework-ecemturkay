--2
select distinct k.isim, k.soyad, u.urunAd, sde.toplam from tblSiparisDetay AS sde
INNER JOIN tblSiparis AS s ON s.faturaKod = sde.faturaKod
INNER JOIN tblUrun as u on sde.urunKod = u.urunKod
INNER JOIN tblKullanici as k on s.kullaniciKod = k.kullaniciKod 
where sde.toplam IN (SELECT max(sde.toplam) from tblSiparisDetay as sde);