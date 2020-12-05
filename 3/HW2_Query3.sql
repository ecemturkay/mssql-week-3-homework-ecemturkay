--3
select m.meslek from tblKullanici as k
inner join tblMeslek as m on k.meslekKod = m.meslekKod
where k.kullaniciKod NOT IN 
(select kullaniciKod from tblSiparis) ;
