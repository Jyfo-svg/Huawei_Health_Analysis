#  Huawei Health Data Analysis

## 项目简介
基于华为隐私中心导出的个人穿戴设备数据，探讨睡眠及运动对睡眠的影响。

## 数据来源
由华为手环记录并保存到华为运动健康APP，
再从华为隐私中心申请个人数据，导出JSON格式原始数据，包含心率、睡眠、运动等记录。

## 分析流程
1. `01_json_to_csv.ipynb` 
— 原始JSON转换为CSV：获取健康相关字段并按日期汇总。
2. `02_data_cleaning.ipynb` 
— 对CSV文件数据清洗：填充缺失值，处理异常值等。
3. `03_deep_analysis.ipynb` 
— 对清洗后的CSV文件进行数据探索，相关性分析，结论输出等。
4. `SQL/` 
— 使用窗口函数分析高强度运动对当晚深睡的影响
5. `TABLEAU/` 
— 可视化dashboard

## 关键发现
1. 

## 结论
1. 


## 工具
Python / SQL / Tableau

