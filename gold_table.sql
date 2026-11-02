CREATE TABLE workspace.venturesoft27oct2026.gold_sales (
  Order_Year INT,
  Order_Month INT,
  Region STRING COLLATE UTF8_BINARY,
  State STRING COLLATE UTF8_BINARY,
  City STRING COLLATE UTF8_BINARY,
  Category STRING COLLATE UTF8_BINARY,
  `Sub-Category` STRING COLLATE UTF8_BINARY,
  Segment STRING COLLATE UTF8_BINARY,
  Ship_Mode STRING COLLATE UTF8_BINARY,
  Total_Sales DECIMAL(22,2),
  Total_Profit DECIMAL(22,2),
  Total_Quantity BIGINT,
  Total_Orders BIGINT,
  Average_Discount DECIMAL(9,8),
  Profit_Margin DECIMAL(29,2))
USING delta
CLUSTER BY AUTO
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0',
  'delta.parquet.format.version.afe.internal' = '2.12.0')

CREATE TABLE workspace.venturesoft27oct2026.gold_customer (
  Customer_ID STRING COLLATE UTF8_BINARY,
  Customer_Name STRING COLLATE UTF8_BINARY,
  Segment STRING COLLATE UTF8_BINARY,
  Total_Sales DECIMAL(22,2),
  Total_Profit DECIMAL(22,2),
  Total_Quantity BIGINT,
  Total_Orders BIGINT,
  First_Order_Date DATE,
  Last_Order_Date DATE,
  Average_Order_Value DECIMAL(23,2))
USING delta
CLUSTER BY AUTO
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0',
  'delta.parquet.format.version.afe.internal' = '2.12.0')
