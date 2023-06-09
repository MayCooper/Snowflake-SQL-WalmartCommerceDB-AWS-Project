---CREATE TRANSIENT TABLE

USE DATABASE WALMART_DB;

CREATE OR REPLACE TRANSIENT TABLE IN_BETA
("BRAND" STRING, 
 "MODEL" STRING, 
 "COLOR" STRING, 
 "MEMORY" STRING, 
 "STORAGE" STRING, 
 "RATING" FLOAT,
 "LAUNCH_DATE" DATE);


 SELECT TABLE_NAME, 
        TABLE_TYPE, 
        IS_TRANSIENT, 
        RETENTION_TIME, 
        AUTO_CLUSTERING_ON
FROM INFORMATION_SCHEMA.TABLES  
WHERE TABLE_NAME LIKE 'IN_%';


INSERT INTO IN_BETA VALUES
('LG', 'Q60', 'Blue', '3 GB', '64 GB', 4, '2021-04-01'),
('Google Pixel', '3a', 'Just Black', '4 GB', '128 GB', 4.4, '2020-12-20'),
('HTC','U11+', 'Amazing Silver', '6 GB', '128 GB', 4.7, '2020-09-27'),
('SAMSUNG', 'Galaxy A22', 'Sky Blue', '4 GB', '128 GB', 4.3, '2021-01-09'),
('Lenovo', 'S560', 'Deep Black', '4 GB', '64 GB', 4.1, '2020-04-07'),
('LG', 'Q60+', 'Blue', '4 GB', '64 GB', 3.9, '2020-03-28');


SELECT * FROM IN_BETA;     
