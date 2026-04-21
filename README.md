#  Huawei Health Data Analysis

## 项目简介
基于华为隐私中心导出的个人穿戴设备数据，探讨睡眠及运动对睡眠的影响。

## 数据来源
由华为手环记录并保存到华为运动健康APP
，再从华为隐私中心申请个人数据，导出JSON格式原始数据，包含心率、睡眠、运动等记录。

## 分析流程
1. `01_json_to_csv.ipynb` 
—原始JSON转换为CSV：获取健康相关字段并按日期汇总。
2. `02_data_cleaning.ipynb` 
— 对CSV数据清洗：填充缺失值，处理异常值等。
3. `SQL/` — 分析睡眠及运动对睡眠的影响
4. `TABLEAU/` — 可视化dashboard

## 工具
Python / SQL / Tableau

