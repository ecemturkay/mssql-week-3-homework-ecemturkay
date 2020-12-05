--8
select top 1 k.isim, k.soyad, s.toplam from tblKullanici as k
inner join tblSiparis as s on k.kullaniciKod = s.kullaniciKod
where k.isim LIKE 'A%' AND k.soyad LIKE '%ak%' 
order by s.toplam desc;
