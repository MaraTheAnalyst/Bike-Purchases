select * from bike_buyers;

Create table bike_buyers2 like bike_buyers;

insert into bike_buyers2 select distinct * from bike_buyers;

select * from bike_buyers2;

select age from bike_buyers2;
SELECT 
    age,
    CASE
        WHEN age <= 40 THEN 'youth'
        WHEN age BETWEEN 41 AND 50 THEN 'middele aged'
        WHEN age BETWEEN 51 AND 60 THEN 'senior'
        ELSE 'elderly'
    END AS age_group
FROM
    bike_buyers2;
    
alter table bike_buyers2
add column age_group text;

update bike_buyers2
set age_group = CASE
        WHEN age <= 40 THEN 'youth'
        WHEN age BETWEEN 41 AND 50 THEN 'middle aged'
        WHEN age BETWEEN 51 AND 60 THEN 'senior'
        ELSE 'elderly'
    END;
    
select * from bike_buyers2;

ALTER TABLE bike_buyers2
CHANGE `Marital Status` marital_status VARCHAR(50);

select * from bike_buyers2;

UPDATE bike_buyers2 
SET 
    marital_status = CASE
        WHEN marital_status = 'M' THEN 'Married'
        WHEN marital_status = 'S' THEN 'Single'
        ELSE marital_status
    END;

UPDATE bike_buyers2 
SET 
    Gender = CASE
        WHEN Gender = 'M' THEN 'Male'
        WHEN Gender = 'F' THEN 'Female'
        ELSE Gender
    END;
    
select * from bike_buyers2;

ALTER TABLE bike_buyers2
CHANGE `Commute Distance` commute_distance VARCHAR(50);

ALTER TABLE bike_buyers2
CHANGE `Purchased Bike` purchased_bike VARCHAR(10);

ALTER TABLE bike_buyers2
CHANGE `Home Owner` home_owner text;

select * from bike_buyers2;

SELECT 
    age_group,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN purchased_bike = 'yes' THEN 1
        ELSE 0
    END) AS buyers,
    ROUND(SUM(CASE
                WHEN purchased_bike = 'yes' THEN 1
                ELSE 0
            END) / COUNT(*) * 100,
            2) AS purchase_rate
FROM
    bike_buyers2
GROUP BY age_group
ORDER BY purchase_rate desc;

SELECT 
    gender,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN purchased_bike = 'yes' THEN 1
        ELSE 0
    END) AS buyers,
    ROUND(SUM(CASE
                WHEN purchased_bike = 'yes' THEN 1
                ELSE 0
            END) / COUNT(*) * 100,
            2) AS purchase_rate
FROM
    bike_buyers2
GROUP BY gender
ORDER BY purchase_rate DESC;

SELECT 
    marital_status,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN purchased_bike = 'yes' THEN 1
        ELSE 0
    END) AS buyers,
    ROUND(SUM(CASE
                WHEN purchased_bike = 'yes' THEN 1
                ELSE 0
            END) / COUNT(*) * 100,
            2) AS purchase_rate
FROM
    bike_buyers2
GROUP BY marital_status
ORDER BY purchase_rate desc;

SELECT 
    occupation,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN purchased_bike = 'yes' THEN 1
        ELSE 0
    END) AS buyers,
    ROUND(SUM(CASE
                WHEN purchased_bike = 'yes' THEN 1
                ELSE 0
            END) / COUNT(*) * 100,
            2) AS purchase_rate
FROM
    bike_buyers2
GROUP BY occupation
ORDER BY purchase_rate desc;

SELECT 
    region,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN purchased_bike = 'yes' THEN 1
        ELSE 0
    END) AS buyers,
    ROUND(SUM(CASE
                WHEN purchased_bike = 'yes' THEN 1
                ELSE 0
            END) / COUNT(*) * 100,
            2) AS purchase_rate
FROM
    bike_buyers2
GROUP BY region
ORDER BY purchase_rate desc;

select * from bike_buyers2;

SELECT 
    income,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN purchased_bike = 'yes' THEN 1
        ELSE 0
    END) AS buyers,
    ROUND(SUM(CASE
                WHEN purchased_bike = 'yes' THEN 1
                ELSE 0
            END) / COUNT(*) * 100,
            2) AS purchase_rate
FROM
    bike_buyers2
GROUP BY income
ORDER BY purchase_rate desc;

SELECT 
    *
FROM
    bike_buyers2;

SELECT 
    children,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN purchased_bike = 'yes' THEN 1
        ELSE 0
    END) AS buyers,
    ROUND(SUM(CASE
                WHEN purchased_bike = 'yes' THEN 1
                ELSE 0
            END) / COUNT(*) * 100,
            2) AS purchase_rate
FROM
    bike_buyers2
GROUP BY children
ORDER BY purchase_rate desc;

select * from bike_buyers2;

SELECT 
    marital_status, income,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN purchased_bike = 'yes' THEN 1
        ELSE 0
    END) AS buyers,
    ROUND(SUM(CASE
                WHEN purchased_bike = 'yes' THEN 1
                ELSE 0
            END) / COUNT(*) * 100,
            2) AS purchase_rate
FROM
    bike_buyers2
GROUP BY marital_status, income
ORDER BY purchase_rate desc;

select * from bike_buyers2;

SELECT 
    education,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN purchased_bike = 'yes' THEN 1
        ELSE 0
    END) AS buyers,
    ROUND(SUM(CASE
                WHEN purchased_bike = 'yes' THEN 1
                ELSE 0
            END) / COUNT(*) * 100,
            2) AS purchase_rate
FROM
    bike_buyers2
GROUP BY education
ORDER BY purchase_rate desc;

select * from bike_buyers2;

SELECT 
    marital_status,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN purchased_bike = 'yes' THEN 1
        ELSE 0
    END) AS buyers,
    ROUND(SUM(CASE
                WHEN purchased_bike = 'yes' THEN 1
                ELSE 0
            END) / COUNT(*) * 100,
            2) AS purchase_rate
FROM
    bike_buyers2
GROUP BY marital_status
ORDER BY purchase_rate desc;

SELECT 
    age_group,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN purchased_bike = 'yes' THEN 1
        ELSE 0
    END) AS buyers,
    ROUND(SUM(CASE
                WHEN purchased_bike = 'yes' THEN 1
                ELSE 0
            END) / COUNT(*) * 100,
            2) AS purchase_rate
FROM
    bike_buyers2
GROUP BY age_group
ORDER BY purchase_rate desc;

SELECT 
    commute_distance,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN purchased_bike = 'yes' THEN 1
        ELSE 0
    END) AS buyers,
    ROUND(SUM(CASE
                WHEN purchased_bike = 'yes' THEN 1
                ELSE 0
            END) / COUNT(*) * 100,
            2) AS purchase_rate
FROM
    bike_buyers2
GROUP BY commute_distance
ORDER BY purchase_rate desc;

select * from bike_buyers2;

SELECT 
    *
FROM
    bike_buyers2
WHERE
    purchased_bike = 'yes';

Alter table bike_buyers2
drop column `Age Group`;

SELECT 
    purchased_bike,
    COUNT(*) AS customer_count
FROM bike_buyers2
GROUP BY purchased_bike;

ALTER TABLE bike_buyers2
add COLUMN buyer_status varchar(20);

UPDATE bike_buyers2
SET buyer_status = 
    CASE
        WHEN purchased_bike = 'Yes' THEN 'Buyer'
        ELSE 'Non-Buyer'
    END;
    
select * from bike_buyers2;

select avg(income) from bike_buyers2;

select count(*) as total_customers from bike_buyers2;

SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN purchased_bike = 'Yes' THEN 1 ELSE 0 END) AS buyers,
    ROUND(
        SUM(CASE WHEN purchased_bike = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS overall_purchase_rate
FROM bike_buyers2;

SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN buyer_status = 'Buyer' THEN 1 ELSE 0 END) AS total_buyers
FROM bike_buyers2;

select buyer_status from bike_buyers2;

select * from bike_buyers2;


