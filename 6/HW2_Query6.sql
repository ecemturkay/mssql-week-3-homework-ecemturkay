--6
select m.meslek, s.toplam
from tblKullanici AS k
inner join tblSiparis AS s ON k.kullaniciKod = s.kullaniciKod
inner join tblMeslek AS m ON k.meslekKod = m.meslekKod
where s.toplam in (select MAX(s.toplam) from tblSiparis as s);