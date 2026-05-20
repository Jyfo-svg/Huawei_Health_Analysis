LOAD DATA LOCAL INFILE 'D:/DA/Huawei_Health_Analysis/data/processed/health_daily_summary_cleaned.csv'
INTO TABLE health_daily_summary_cleaned
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;