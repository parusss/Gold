/*Розница 1 - последние покупки - 1 623 978 записей*/
SELECT TOP 1000 [PurchaseDateTime]
      ,[PartnerID]
      ,[Age]
      ,[SEX]
      ,[CityID]
      ,[PurchaseCode]
      ,[CardID]
      ,[DneyProshlo]
      ,[LifeTimeM]
      ,[Month1]
      ,[Month2]
      ,[Month3]
      ,[Month4]
      ,[Month5]
      ,[Month6]
      ,[Month7]
      ,[Month8]
      ,[Month9]
      ,[Month10]
      ,[Month11]
      ,[Month12]
      ,[IsNY]
      ,[IsDR]
      ,[IsVD]
      ,[Is8M]
      ,[isPartnerPromotionID]
      ,[isCrossPromo]
      ,[SMS]
      ,[PercentSMS]
      ,[PredpriyatieID]
      ,[Price]
      ,[Quantity]
      ,[SummaAfterDiscount]
      ,[SummaDiscount]
      ,[CostPrice]
      ,[PurchaseCardID]
      ,[GiftCardPositionID]
      ,[CostMin]
      ,[CostTag]
      ,[CostStock]
      ,[CostRetail]
      ,[HourID]
      ,[QntName]
      ,[Men]
      ,[Child]
      ,[Kolco]
      ,[SERGI]
      ,[PPODVES]
      ,[FUTLAR]
      ,[CEP]
      ,[BRASLET]
      ,[KOLE]
      ,[UNKNOWN_WEAR]
      ,[IsExpensive]
      ,[IsCheap]
      ,[IsPremium]
      ,[IsMidle]
      ,[IsUnknownLevel]
      ,[IsGold]
      ,[IsSilver]
      ,[IsNoMetal]
      ,[IsUnknownMetal]
      ,[QntPurchaseCode]
      ,[SumQuantity]
      ,[SUMisPartnerPromotionID]
      ,[PercentisPartnerPromotionID]
      ,[AVGisPartnerPromotionID]
      ,[SUMisCrossPromo]
      ,[PercentisCrossPromo]
      ,[AVGisCrossPromo]
      ,[PercentMonth1]
      ,[PercentMonth2]
      ,[PercentMonth3]
      ,[PercentMonth4]
      ,[PercentMonth5]
      ,[PercentMonth6]
      ,[PercentMonth7]
      ,[PercentMonth8]
      ,[PercentMonth9]
      ,[PercentMonth10]
      ,[PercentMonth11]
      ,[PercentMonth12]
      ,[PercentNY]
      ,[PercentDR]
      ,[PercentVD]
      ,[Percent8M]
      ,[SUMPrice]
      ,[AVGPrice]
      ,[SumSumma]
      ,[AVGSumma]
      ,[SumSummaDiscount]
      ,[AvgSummaDiscount]
      ,[AVGProcentSkidki]
      ,[PercentMen]
      ,[SumChild]
      ,[PercentChild]
      ,[PercentKolco]
      ,[PercentSERGI]
      ,[PercentPODVES]
      ,[PercentFUTLAR]
      ,[PercentCEP]
      ,[PercentBRASLET]
      ,[PercentKOLE]
      ,[PercentNKNOWN_WEAR]
      ,[AVGCostPrice]
      ,[AVGCostMin]
      ,[AVGCostTag]
      ,[AVGCostStock]
      ,[AVGCostRetail]
      ,[AVGGiftCardPositionID]
      ,[SumGiftCardPositionID]
      ,[AVGQntName]
      ,[PercentExpensive]
      ,[PercentCheap]
      ,[PercentPremium]
      ,[PercentMidle]
      ,[PercentUnknownLevel]
      ,[PercentGold]
      ,[PercentSilver]
      ,[PercentNoMetal]
      ,[PercentUnknownMetal]
  FROM [Gold585].[dbo].[RetailCommon] a
  Where PurchaseDateTime = (Select MAX(PurchaseDateTime) from [Gold585].[dbo].[RetailCommon] b where a.PartnerID = b.PartnerID)
  and PurchaseDateTime >= CAST('2017-01-01' as DATE) 

