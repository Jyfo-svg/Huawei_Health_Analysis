WITH act_part AS
(
SELECT 
  CASE WHEN `活动消耗`<500 THEN '0-500'
     WHEN `活动消耗`<1000 AND `活动消耗`>500 THEN '500-1000'
     WHEN `活动消耗`<1500 AND 活动消耗>1000 THEN '1000-1500'
     WHEN `活动消耗`<2000 AND `活动消耗`>1500 THEN '1500-2000' 
     WHEN `活动消耗`<2500 AND `活动消耗`>2000 THEN '2000-2500'
     WHEN `活动消耗`<3000 AND `活动消耗`>2500 THEN '2500-3000'
     END AS 消耗分段,活动消耗,
     lead(睡眠效率) OVER() AS 当晚睡眠效率,
     lead(深睡比例) OVER() AS 当晚深睡比例,
     lead(清醒时长) OVER() AS 当晚清醒时长
 FROM `health_daily_summary_cleaned`
)

SELECT 消耗分段,
 round(AVG(当晚睡眠效率),2) AS 平均睡眠效率,
 round(AVG(当晚深睡比例),2) AS 平均深睡比例,
 round(AVG(当晚清醒时长),2) AS 平均清醒时长
 
 FROM act_part
 WHERE 消耗分段 IS NOT NULL
 GROUP BY 消耗分段
 ORDER BY min(活动消耗)

 

