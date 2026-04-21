WITH next AS
(
SELECT *,
     DATE_ADD(`日期`,INTERVAL 1 DAY) 
   AS 第二天,
     LEAD(`深睡比例`) OVER(ORDER BY `日期`)   
   AS 第二天深睡比例
FROM health_daily_summary
  ORDER BY `平均心率` DESC
  LIMIT 10
)

SELECT 
       ROUND(
        (
    avg(第二天深睡比例)-(select avg(深睡比例) FROM health_daily_summary) 
        *1.0
           ) /(select avg(深睡比例) FROM health_daily_summary) 
       ,2) AS 平均同比增长
FROM next 
    
   
