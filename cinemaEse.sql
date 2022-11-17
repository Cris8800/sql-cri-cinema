--1 il nome di tutte le sale di pisa
SELECT sale.nome
FROM sale
WHERE sale.citta = 'Pisa'


--2 i film di Fellini prodotti dopo il 1960
SELECT film.regista,annoproduzione
from film
where film.regista like 'Makoto Shinkai' and annoproduzione >1960 

--3 il titolo e la durata del film di fantascienza giapponesi o francesi prodotti dopo il 1990
--> Manca o <-- 

SELECT film.titolo,annoproduzione,nazionalita,genere
from film
where nazionalita = 'Giapponese' and genere = 'fantascienza' and annoproduzione >1990

--4 il titolo dei film di fantascienza giapponesi prodotti dopo il 1990 oppure francesi
-- >HO CAMBIATO NAZIONALITà perhè i record richiesti erano vuoti
SELECT film.titolo,annoproduzione,nazionalita,genere
from film
where nazionalita = 'Americana' and genere = 'fantascienza' or nazionalita= 'USA' and annoproduzione >1990

--5 il titolo dei film del regista di "Casablanca"
--cambiato regista con makoto shinkai
SELECT film.titolo,regista
from film
where  regista = 'Makoto Shinkai'



--6 il titolo e il genere dei film proiettati il giorno di natale 2004 

--errata mancanza data 
SELECT film.titolo,genere,dataproiezione
from film, proiezioni
WHERE data.proiezioni 


--7 il titolo e il genere dei film proiettati a napoli il giorno di natale 2004 




--8 i nomi delle sale di napoli in cui il giorno di natale 2004 è stato proiettato un film con R.Williams



--9 il titolo del film che recita M. Mastroianni oppure S.lorenzo
--errata 

SELECT attori.nome,recita
from  attori join recita on attori.codattore = recita.codattore
where  attori.nome = 'Anya Taylor-Joy'


--10 il titolo dei film in cui recitano M.mastroianni oppure S.lorenzo



--11 Per ogni film in cui recita un attore francese , il titolo del film e il nome dell'attore




--12 Pero ogni film che è stato proiettato a Pisa nel gennaio 2005, il titolo del film e il nome della sala


--13 Il numero di sale di Pisa con piu di 60 posti

SELECT MAX (sale.posti),sale.citta
FROM sale
GROUP by citta


--14 il numero di posti nelle sale di Pisa




--15 Per ogni città, il numero di sale 




--16  Per ogni città, il numero di sale con più di 60 posti 




--17Per ogni regista regista ,il numero di film diretti dopo 1990





--18 per ogni regista, l'incasso totale di tutte le proiezioni dei suoi film





--19 Per ogni film di S.spielbierg, il titolo del film, il numero totale di proiezioni a Pisa e l'incasso totale

