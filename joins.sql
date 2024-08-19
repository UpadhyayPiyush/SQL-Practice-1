select * from sales;
select * from people;

select s.Amount, s.SaleDate, p.Salesperson, p.SPID, s.SPID
from sales s
join people p on p.SPID= s.SPID;

-- Combining two tables
select s.Amount, s.SaleDate, pr.product
from sales s
left join products pr on pr.PID= s.PID;

-- Combining Multiple tables
select s.Amount, s.SaleDate, p.Salesperson, pr.product, p.Team
from sales s
join people p on p.SPID=s.SPID
join products pr on pr.pid=s.pid;


-- Combining Multiple tables with Some conditions
select s.Amount, s.SaleDate, p.Salesperson, pr.product, p.Team
from sales s
join people p on p.SPID=s.SPID
join products pr on pr.pid=s.pid
where s.Amount <500
and p.Team='Yummies';

-- Combining Multiple tables with Some conditions(extracting blank values in team)
select s.Amount, s.SaleDate, p.Salesperson, pr.product, p.Team
from sales s
join people p on p.SPID=s.SPID
join products pr on pr.pid=s.pid
where s.Amount <500
and p.Team='';

-- Combining Multiple tables with Some conditions(extracting location of indian and newzeland)
select s.Amount, s.SaleDate, p.Salesperson, pr.product, p.Team
from sales s
join people p on p.SPID=s.SPID
join products pr on pr.pid=s.pid
join geo g on g.GeoID=s.GeoID
where s.Amount <500
and p.team=''
and g.Geo in ('India','New Zealand')
order by saledate;


