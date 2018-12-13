
SELECT 
    QntPurchaseCode,
	AVG([SummaAfterDiscount]) [SummaAfterDiscount]
	,AVG(LifeTimeM)
	,Count(PartnerID) Part
  FROM [Gold585].[dbo].[RetailCommon] a
  WHERE partnerID <> 0 and PurchaseDateTime = (Select MAX(PurchaseDateTime) MaxDate From RetailCommon rt where rt.PartnerID = a.PartnerID)
  and PurchaseDateTime >= CAST('2017-01-01' as DATE)
  group by QntPurchaseCode
  order BY QntPurchaseCode

Select 	AVG([SummaAfterDiscount]) [SummaAfterDiscount]


SELECT CASE WHEN [LifeTimeM] + DATEDIFF(Month, PurchaseDateTime, GetDate())<=12 Then 1
		When [LifeTimeM] + DATEDIFF(Month, PurchaseDateTime, GetDate())<=24 Then 2
		WHEN [LifeTimeM] + DATEDIFF(Month, PurchaseDateTime, GetDate())<=36 Then 3
		else 4 END YearP
        ,Count(PartnerID) PartnerID
    	,QntPurchaseCode QntPurch
  FROM [Gold585].[dbo].[RetailCommon] a
  WHERE partnerID <> 0 and PurchaseDateTime = (Select MAX(PurchaseDateTime) MaxDate From RetailCommon rt where rt.PartnerID = a.PartnerID)
  and PurchaseDateTime >= CAST('2015-01-01' as DATE)
  and QntPurchaseCode <=10
  group by CASE WHEN [LifeTimeM] + DATEDIFF(Month, PurchaseDateTime, GetDate())<=12 Then 1
		When [LifeTimeM] + DATEDIFF(Month, PurchaseDateTime, GetDate())<=24 Then 2
		WHEN [LifeTimeM] + DATEDIFF(Month, PurchaseDateTime, GetDate())<=36 Then 3
		else 4 END, QntPurchaseCode
  order by CASE WHEN [LifeTimeM] + DATEDIFF(Month, PurchaseDateTime, GetDate())<=12 Then 1
		When [LifeTimeM] + DATEDIFF(Month, PurchaseDateTime, GetDate())<=24 Then 2
		WHEN [LifeTimeM] + DATEDIFF(Month, PurchaseDateTime, GetDate())<=36 Then 3
		else 4 END, QntPurchaseCode


