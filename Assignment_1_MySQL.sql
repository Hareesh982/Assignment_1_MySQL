
-- 1.Count the number of Salesperson whose name begin with ‘a’/’A’.

select count(*) as count
from salespeople
where Sname like "a%" or
	  Sname like "A%";

-- 2.Display all the Salesperson whose all orders worth is more than Rs. 2000.

select Sname,Amt
from orders
inner join salespeople on orders.Snum = salespeople.Snum
where Amt > 2000;

-- 3.Count the number of Salesperson belonging to Newyork.

select count(*) as count
from salespeople
where City = "Newyork";

-- 4.Display the number of Salespeople belonging to London and belonging to Paris.

select City,count(City)
from salespeople
where City = "London" or
	  City = "Paris"
group by City;

-- 5.Display the number of orders taken by each Salesperson and their date of orders.

select s.Sname, count(*) as No_of_orders, o.Odate
from salespeople as s
inner join orders as o on s.Snum = o.Snum
group by s.Sname, o.Odate;

      
