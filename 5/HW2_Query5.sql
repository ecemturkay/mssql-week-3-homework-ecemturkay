--5
select distinct(u.urunAd), u.urunKod
from tblSiparis AS s
INNER JOIN tblSiparisDurum AS sd ON s.siparisDurumKod = sd.siparisDurumKod
INNER JOIN tblSiparisDetay AS sde ON s.faturaKod = sde.faturaKod
inner join tblUrun as u on sde.urunKod = u.urunKod
WHERE sd.siparisDurumKod = 10;
