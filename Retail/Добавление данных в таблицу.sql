/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/

UPDATE [Gold585].[dbo].[RetailCommon]
SET [PercentSMS_new] = a.[PercentSMS], [AVGPercentinSMS] = a.[AVGPercentinSMS]
FROM (SELECT PartnerID, [PurchaseDateTime], CAST(REPLACE(b.[PercentSMS], ',','.') as FLOAT) [PercentSMS], 
CAST(REPLACE(b.[AVGPercentinSMS], ',','.') as FLOAT) [AVGPercentinSMS]
FROM [Gold585].[dbo].[RetailCommonSMS] b WHERE PartnerID IN (SELECT DISTINCT PartnerID FROM [Gold585].[dbo].[RetailCommon])) a
WHERE a.PartnerID = [RetailCommon].PartnerID and CAST(a.[PurchaseDateTime] as DATE) = cast([RetailCommon].[PurchaseDateTime] as DATE)


SELECT 
      a.[PurchaseDateTime]
      ,a.[PartnerID]
      ,a.[SMS]
      ,a.[SumQuantity]
      ,CAST(REPLACE(b.[PercentSMS], ',','.') as FLOAT) [PercentSMS]
      ,CAST(REPLACE(b.[AVGPercentinSMS], ',','.') as FLOAT) [AVGPercentinSMS]
       FROM [Gold585].[dbo].[RetailCommon] a
	   left join [Gold585].[dbo].[RetailCommonSMS] b on a.PartnerID = b.PartnerID and CAST(a.[PurchaseDateTime] as DATE) = cast(b.[PurchaseDateTime] as DATE)
	   --Where a.PartnerID=3864477
	   --order by CAST(a.[PurchaseDateTime] as DATE)


SELECT count(PartnerID) FROM [Gold585].[dbo].[RetailCommon] a 
SELECT 
      a.[PurchaseDateTime]
      ,a.[PartnerID]
      ,a.[SMS]
      ,a.[SumQuantity]
      ,([PercentSMS_new]) [PercentSMS]
      ,([AVGPercentinSMS]) [AVGPercentinSMS]
       FROM [Gold585].[dbo].[RetailCommon] a
	   Where a.PartnerID=3864477
	   Order by CAST(a.[PurchaseDateTime] as DATE)

