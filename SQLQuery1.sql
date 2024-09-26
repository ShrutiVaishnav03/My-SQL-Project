create database sql_project;
select *from dbo.Sheet1$;
select *from dbo.Sheet2$;
select *from Sheet3$;

/* Q1: Which category of product has largest amount? */
SELECT [Amount ], Category from dbo.sheet1$
order by [Amount ] DESC;


/* Q2: select the Quantity and category where profit is highest*/

select max ([ Profit ]) from dbo.Sheet1$;


/* Q3: Update the quantity of product by 2 where order Id is B-25687 */

update dbo.Sheet1$ set Quantity = 5+2
where [Amount ]= 387;

/* Q4: insert one more row where order Id = 9999, Amount= 550, profit= 50,
quantity= 8, category = clothing, sub-category= dupatta, payment mode= UPI*/

insert into Sheet1$ ([Order Id], [Amount ], [ Profit ], Quantity,
Category, [Sub-Category], [Payment Mode])
values (9999,550,50,8, 'CLOTHING', 'DUPATTA', 'UPI');


/* Q5: Remove the column from the sheet2$ where the column 
contain null value*/

alter table dbo.sheet2$ drop column F3, F4;

/*Q6: Rename column name in the table */

EXEC sp_rename 'dbo.sheet2$.[order id]', 'Order_Id', 'column'; 
EXEC sp_rename 'dbo.sheet2$.[Customer Country]', 'Country', 'column'; 
EXEC sp_rename 'dbo.sheet1$.[Order id]', 'Order_Id', 'column';
EXEC sp_rename 'dbo.sheet3$.[Order id]', 'Order_Id', 'column';


/* Q7: shows the country name with the table one and join the
table 2 which contain the data of country */

 select *from sheet1$ as s1
 left outer join Sheet2$ as s2
 on s1.order_id = s2.order_id;

 /* Q8: shows the Customer City name with the table one and 
join the table 2 which contain the data of Customer City*/

select *from sheet1$ as s1
 left outer join Sheet3$ as s3
 on s1.order_id = s3.order_id;




