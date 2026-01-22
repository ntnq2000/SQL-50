# Write your MySQL query statement below
select P.product_id, ifnull(round(sum(units*price)/sum(units),2),0) as average_price from Prices as P
left join UnitsSold as US
on P.product_id = US.product_id
and US.purchase_date between start_date and end_date
group by product_id;


