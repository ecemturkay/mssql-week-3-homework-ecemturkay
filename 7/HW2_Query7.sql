--7
--Hocam soruda x numarali urun derken farkli herhangi bir urun koduna sahip urun olarak algiladim, 
--farkli urun kodlarini denedigimde de yine 52 kodlu sehri verdi sonuc olarak
--Hangi sehir oldugunu tespit etmek icin sehir tablosunu da joinledim ama veri tipleri farkliligindan hata verdigi icin koddan cikarttim.

SELECT top 1 k.sehir, count(k.sehir) as siparis_sayisi FROM tblSiparisDetay as sde
inner join tblUrun as u on sde.urunKod = u.urunKod
inner join tblSiparis as s on sde.faturaKod = s.faturaKod
inner join tblKullanici as k on s.kullaniciKod = k.kullaniciKod
where u.urunKod = 2967
group by k.sehir
order by siparis_sayisi desc;

