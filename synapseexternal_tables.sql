CREATE DATABASE SCOPED CREDENTIAL cred_ritu
WITH 
    IDENTITY = 'Managed Identity'



CREATE EXTERNAL DATA SOURCE SOURCE_silver
WITH
(
    LOCATION = 'https://awstoragedatalakeritu.blob.core.windows.net/silver',
    CREDENTIAL = cred_ritu
)    


CREATE EXTERNAL DATA SOURCE SOURCE_gold
WITH
(
    LOCATION = 'https://awstoragedatalakeritu.blob.core.windows.net/gold',
    CREDENTIAL = cred_ritu
)    



CREATE EXTERNAL FILE FORMAT FORMAT_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)









-- create external table extsales---

CREATE EXTERNAL TABLE gold.extsales
WITH(
    LOCATION = 'extsales',
    DATA_SOURCE = SOURCE_gold,
    FILE_FORMAT = FORMAT_parquet
)
AS
SELECT * FROM gold.sales


SELECT*FROM gold.extsales

