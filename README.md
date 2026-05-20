#  华为健康数据分析

## 项目简介
基于华为隐私中心导出的个人穿戴设备数据，对睡眠，运动，心率进行分析，探索睡眠及其与运动之间的关系。

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
   - `01_create_table.sql`：建表语句。
   - `02_import.sql`：导入CSV 数据。
   
5. `TABLEAU/`  
— 交互式可视化面板，点击下方链接查看。  
- [个人心率极值曲线](https://public.tableau.com/views/_17791975306010/sheet2?:language=zh-CN&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link:showVizHome=no&:embed=true  )
- [睡眠状态比例饼图](https://public.tableau.com/views/_17791969763920/sheet1?:language=zh-CN&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link:showVizHome=no&:embed=true)


## 结论
1. 午睡过长几乎不会影响当晚的睡眠效率。  
2. 长有氧能缩短当晚的入睡耗时。  
3. 夜间睡眠时间相对缩短，第二天午睡可能性增加。


## 技术栈
- Python（Pandas、Numpy）
- MySQL + Navicat
- Tableau Public
- Jupyter Notebook

