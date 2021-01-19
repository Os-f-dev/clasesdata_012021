/*use pubs;

SELECT stor_id, m.title, m.title_id, payterms FROM sales
INNER JOIN titles as m 
ON sales.title_id = m.title_id
WHERE payterms != 'Net 30' AND m.title_id IN
(SELECT titles.title_id FROM sales
INNER JOIN titles 
ON sales.title_id = titles.title_id
WHERE payterms = 'Net 30');

SELECT titles.title_id, titles.title, payterms FROM sales
INNER JOIN titles 
ON sales.title_id = titles.title_id
WHERE payterms = 'Net 30';

SELECT distinct payterms from sales;*/


SELECT t.stor_id as id_store, t.title_id as id_title, count(*) AS 'Count(*)'
FROM (SELECT sales.stor_id, sales.ord_num, sales.title_id, stores.city
	FROM sales
	LEFT JOIN stores
	ON sales.stor_id = stores.stor_id) AS t
GROUP BY title_id;

SELECT sales.stor_id, sales.ord_num, sales.title_id, stores.city
FROM sales
LEFT JOIN stores
ON sales.stor_id = stores.stor_id;