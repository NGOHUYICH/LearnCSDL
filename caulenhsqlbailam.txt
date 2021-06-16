-- yeu cau 1 --
select * from customers;
-- yeu cau 2 --
select * from products where MONTH(cdate) = month(CURRENT_DATE());
-- yeu cau 3 --
select month(cdate), count(*) as SoLuongMoiNguoiDung from customers group by cdate;
-- yeu cau 4 --
select customers.name, invoi.customer_id, sum(invoi_li.qty * invoi_li.unit_price) as SoTien
 from invoices as invoi 
 	inner join invoice_lines as invoi_li on invoi.id = invoi_li.invoice_id
	inner join customers on invoi.customer_id = customers.id
	group by invoi.customer_id order by SoTien desc limit 10;
-- yeu cau 5 --
select products.name,count(*) as SoLanGiaoDich from invoice_lines 
	inner join products on invoice_lines.product_id = products.id
	group by product_id order by SoLanGiaoDich desc limit 10;
-- yeu cau 6 --
select invoices.customer_id,customers.name,count(*) as SoLanCungMua from invoices, customers
	where invoices.customer_id = customers.id
	group by customer_id
	order by SoLanCungMua;
-- yeu cau 7 --
select month(invoices.date)as CacThang ,sum(invoice_lines.qty * invoice_lines.unit_price) as TienTrongThang
	from invoices 
	inner join invoice_lines on invoices.id = invoice_lines.invoice_id
	where year(invoices.date) = 2021
	group by CacThang;
-- yeu cau 8 --
select count(*) as SoDonHang from invoice_lines
	inner join products on invoice_lines.product_id = products.id
	inner join invoices on invoice_lines.invoice_id = invoices.id
	where year(invoices.date) = 2022 and month(invoices.date) = 3 
	and year(products.cdate) = 2021;
-- yeu cau 9 --
select invoices.id,invoices.date , customers.name from invoices 
	inner join customers on invoices.customer_id = customers.id
	where year(CURRENT_DATE)- year(invoices.date)>1 or
(year(CURRENT_DATE)- year(invoices.date)=1 and month(CURRENT_DATE)-month(invoices.date)+12>6) or
(year(CURRENT_DATE)- year(invoices.date)=1 and month(CURRENT_DATE)-month(invoices.date)+12=6 and day(CURRENT_DATE)-day(invoices.date)>=0)