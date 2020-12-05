--1
select urunKod, urunAd, (listeFiyat + listeFiyat * KDVoran) as KDVdahilFiyat from tblUrun
where (listeFiyat + listeFiyat * KDVoran) > 0
order by KDVdahilFiyat;