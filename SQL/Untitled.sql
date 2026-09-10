select * from amazon;
select count(*) from amazon;

-- ALTERING TABLE AND CHANGING THERE DATA TYPES

select distinct status from amazon;
select distinct fulfilment from amazon; 
select distinct sales_channel from amazon; -- only one
select distinct ship_service_level from amazon; -- standard,expedited
select distinct Style from amazon;
select distinct SKU from amazon;
select distinct Category from amazon;
select distinct Size from amazon;
select COUNT(distinct ASIN) from amazon;
select distinct courier_status from amazon;
select distinct qty from amazon;
select distinct currency from amazon; -- only one
select distinct ship_city from amazon;
select distinct ship_state from amazon order by ship_state asc; -- only one (dlete postal code)
select distinct `promotion-ids` from amazon;
select distinct b2b from amazon;
select distinct `fulfilled-by` from amazon; -- only one - easy ship 

-- correcting ship_state

SET SQL_SAFE_UPDATES = 0;

UPDATE amazon AS messy
JOIN pincodes AS official 
  ON messy.ship_postal_code = official.pincode
SET messy.ship_city = UPPER(TRIM(official.City));

SET SQL_SAFE_UPDATES = 1;



SHOW PROCESSLIST;
KILL 137;


UPDATE amazon
SET ship_state = CONCAT(
    UPPER(SUBSTRING(TRIM(ship_state), 1, 1)), 
    LOWER(SUBSTRING(TRIM(ship_state), 2))
)
WHERE ship_state NOT LIKE '% %'; -- For single-word states (e.g., 'BIHAR ' -> 'Bihar')

UPDATE amazon
SET ship_state = CONCAT(
    UPPER(SUBSTRING(TRIM(ship_state), 1, 1)),
    LOWER(SUBSTRING(TRIM(ship_state), 2, LOCATE(' ', TRIM(ship_state)) - 1)),
    UPPER(SUBSTRING(TRIM(ship_state), LOCATE(' ', TRIM(ship_state)) + 1, 1)),
    LOWER(SUBSTRING(TRIM(ship_state), LOCATE(' ', TRIM(ship_state)) + 2))
)
WHERE ship_state LIKE '% %';
update amazon 
set ship_state = 'Punjab' where ship_state = 'Punjab/Mohali/Zirakpur';
update amazon set ship_state = 'Nagaland' where ship_state='NL';
UPDATE amazon
SET ship_state = CASE 
    WHEN ship_state IN ('Rajshthan', 'Rajsthan', 'Rj') THEN 'Rajasthan'
    WHEN ship_state = 'Orissa' THEN 'Odisha'
    WHEN ship_state = 'New Delhi' THEN 'Delhi'
    WHEN ship_state = 'Pondicherry' THEN 'Puducherry'
    WHEN ship_state = 'Pb' THEN 'Punjab'
    ELSE ship_state
END
WHERE ship_state IN ('Rajshthan', 'Rajsthan', 'Rj', 'Orissa', 'New Delhi', 'Pondicherry', 'Pb');

rollback;



-- top performing category 
select category , round(sum(amount),2) as total_amount , sum(qty) as total_quantity 
from amazon
group by category
order by total_amount desc;

-- order volumne trend over time
select month(`date`),sum(amount) from amazon group by month(`date`);
SELECT `Date`, 
       COUNT(DISTINCT order_id) AS Total_Orders,
       SUM(Qty) AS Total_Items_Sold,
       ROUND(SUM(Amount), 2) AS Daily_Revenue
FROM amazon
GROUP BY `Date`
ORDER BY `Date` ASC;

-- count of cancelled orders

select count(*) from amazon where `status` = 'cancelled';

-- monthly sales trend
select month(date),round(sum(amount),2) as total_revenue from amazon group by month(date) order by month(date);
select distinct(year(date)) from amazon;






select * from amazon;


