Select model, speed, hd
From PC
where Price <'500'


Select distinct maker
From Product
Where type = 'Printer'


SELECT Distinct model, ram, screen
FROM Laptop
WHERE price > 1000


SELECT *
From Printer
WHERE color = 'y'


SELECT distinct model, speed, hd
FROM Pc
WHERE ( cd = '12x' OR cd = '24x' ) AND price < 600

Select distinct p.maker, L.speed
From product p
JOIN laptop l ON p.model = l.model
WHERE l.hd >= 10


Select *
From (Select model, Price From PC
Union Select model, Price From Laptop
Union Select model, Price From Printer)
As a 
Where a.model IN (SELECT model 
FROM Product 
WHERE maker = 'B')


Select distinct maker
From Product
WHERE type = 'PC' AND 
maker NOT IN (SELECT maker 
FROM Product 
WHERE type = 'Laptop')


SELECT DISTINCT product.maker
FROM pc
INNER JOIN product ON pc.model = product.model
WHERE pc.speed >= 450


Select distinct model, price
From Printer 
WHERE price = (SELECT MAX(price) 
               FROM Printer)


Select avg(speed)
From Pc


Select avg(speed)
from Laptop
Where Price > 1000


select avg(pc.speed)
from pc, product
where pc.model = product.model and product.maker = 'a'


SELECT s.class, s.name, c.country
FROM ships s
 JOIN classes c ON s.class = c.class
WHERE c.numGuns >= 10


SELECT
PC.hd FROM PC
GROUP BY hd
HAVING COUNT(hd) > 1;




