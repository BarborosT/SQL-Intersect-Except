1.actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.

(
Select first_name From actor
)
union
(
Select first_name From customer
);

2.actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.

(
Select first From actor
)
INTERSECT
(
Select first_name From customer
);

3.actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.


(
Select first From actor
)
EXCEPT
(
Select first_name From customer
);


 4.İlk 3 sorguyu tekrar eden veriler için de yapalım.

(
SELECT first_name FROM actor
)
UNION ALL 
(
SELECT first_name FROM customer
);

(
SELECT first_name FROM actor
)
INTERSECT ALL
(
SELECT first_name FROM customer
);

(
SELECT first_name FROM actor
)
EXCEPT ALL
(
SELECT first_name FROM customer
);