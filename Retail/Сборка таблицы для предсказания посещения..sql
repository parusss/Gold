
drop table TempPurch

SELECT  CAST([PurchaseDateTime] as DATE) [PurchaseDate]
      ,[PartnerID]
	  ,[BirthDate]
	  ,[Sex]
	  ,[CityID]
	  ,IIF(a.[Text]='',0,1) SMS
	  ,[Percent]
	  ,[labels]
      ,([PurchaseCode]) 
	  ,(CAST(IIF([Quantity] = '','0',replace([Quantity],',','.')) as float)) [Quantity]
      ,(CAST(IIF([SummaAfterDiscount] = '','0',replace([SummaAfterDiscount],',','.')) as float)) [SummaAfterDiscount]
	  ,(IIF(Month([PurchaseDateTime])=1,1,0)) M1
	  ,(IIF(Month([PurchaseDateTime])=2,1,0)) M2
	  ,(IIF(Month([PurchaseDateTime])=3,1,0)) M3
	  ,(IIF(Month([PurchaseDateTime])=4,1,0)) M4
	  ,(IIF(Month([PurchaseDateTime])=5,1,0)) M5
	  ,(IIF(Month([PurchaseDateTime])=6,1,0)) M6
	  ,(IIF(Month([PurchaseDateTime])=7,1,0)) M7
	  ,(IIF(Month([PurchaseDateTime])=8,1,0)) M8
	  ,(IIF(Month([PurchaseDateTime])=9,1,0)) M9
	  ,(IIF(Month([PurchaseDateTime])=10,1,0)) M10
	  ,(IIF(Month([PurchaseDateTime])=11,1,0)) M11
	  ,(IIF(Month([PurchaseDateTime])=12,1,0)) M12
	  ,(IIF(CAST(IIF([SummaAfterDiscount] = '','0',replace([SummaAfterDiscount],',','.')) as float)<1000,1,0)) P1k
	  ,(IIF(CAST(IIF([SummaAfterDiscount] = '','0',replace([SummaAfterDiscount],',','.')) as float)>=1000 and CAST(IIF([SummaAfterDiscount] = '','0',replace([SummaAfterDiscount],',','.')) as float) <3000,1,0)) P3k
	  ,(IIF(CAST(IIF([SummaAfterDiscount] = '','0',replace([SummaAfterDiscount],',','.')) as float)>=3000 and CAST(IIF([SummaAfterDiscount] = '','0',replace([SummaAfterDiscount],',','.')) as float) <6000,1,0)) P6k
	  ,(IIF(CAST(IIF([SummaAfterDiscount] = '','0',replace([SummaAfterDiscount],',','.')) as float)>=6000 and CAST(IIF([SummaAfterDiscount] = '','0',replace([SummaAfterDiscount],',','.')) as float) <12000,1,0)) P12k
	  ,(IIF(CAST(IIF([SummaAfterDiscount] = '','0',replace([SummaAfterDiscount],',','.')) as float)>=12000,1,0)) P50k
      ,[MaterialID]
      ,[Name]
      ,[GroupID]
      ,[CollectionID]
      ,IIF([WearType] = 'ÊÎËÜÖÎ',1,0) Kolco
	  ,IIF([WearType] = 'ÑÅÐÜÃÈ',1,0) SERGI
	  ,IIF([WearType] = 'ÏÎÄÂÅÑ',1,0) PODVES
	  ,IIF([WearType] = 'ÖÅÏÜ',1,0) CEP
	  ,IIF([WearType] = 'ÁÐÀÑËÅÒ',1,0) BRASLET
	  ,IIF([WearType] = 'ÊÎËÜÅ',1,0) KOLE
	  ,IIF([WearType] = 'ÁÓÑÛ',1,0) BUSI
	  ,[WearType]
      ,IIF([Proba] = '0',1,0)  Proba0
	  ,IIF([Proba] = '375',1,0)  Proba375
	  ,IIF([Proba] = '500',1,0)  Proba500
	  ,IIF([Proba] = '583',1,0)  Proba583
	  ,IIF([Proba] = '585',1,0)  Proba585
	  ,IIF([Proba] = '750',1,0)  Proba750
	  ,IIF([Proba] = '800',1,0)  Proba800
	  ,IIF([Proba] = '830',1,0)  Proba830
	  ,IIF([Proba] = '850',1,0)  Proba850
	  ,IIF([Proba] = '875',1,0)  Proba875
	  ,IIF([Proba] = '900',1,0)  Proba900
	  ,IIF([Proba] = '925',1,0)  Proba925
	  ,IIF([Proba] = '950',1,0)  Proba950
	  ,IIF([Proba] = '958',1,0)  Proba958
	  ,IIF([Proba] = '960',1,0)  Proba960
	  ,IIF([Proba] = '999',1,0)  Proba999
	  ,[Proba]
      ,IIF([MaterialStatusID] = 1,1,0) MaterialStatus1
	  ,IIF([MaterialStatusID] = 2,1,0) MaterialStatus2
	  ,IIF([MaterialStatusID] = 3,1,0) MaterialStatus3
	  ,IIF([MaterialStatusID] = 4,1,0) MaterialStatus4
	  ,IIF([MaterialStatusID] = 5,1,0) MaterialStatus5
	  ,IIF([MaterialStatusID] = 6,1,0) MaterialStatus6
	  ,IIF([MaterialStatusID] = 7,1,0) MaterialStatus7
	  ,IIF([MaterialStatusID] = 8,1,0) MaterialStatus8
	  ,IIF([MaterialStatusID] = 9,1,0) MaterialStatus9
	  ,IIF([MaterialStatusID] = 10,1,0) MaterialStatus10
	  ,IIF([MaterialStatusID] = 11,1,0) MaterialStatus11
	  ,IIF([MaterialStatusID] = 12,1,0) MaterialStatus12
	  ,[MaterialStatusID]
      ,IIF([PriceSegment] = 'ÄÅØÅÂÛÉ',1,0) Cheap
	  ,IIF([PriceSegment] = 'ÄÎÐÎÃÎÉ',1,0) Expensive
	  ,IIF([PriceSegment] = 'ÏÐÅÌÈÓÌ',1,0) Premium
	  ,IIF([PriceSegment] = 'ÑÐÅÄÍÈÉ',1,0) Middle
	  ,[PriceSegment]
      ,IIF([Metal] = 'ÇÎËÎÒÎ',1,0) Zoloto
	  ,IIF([Metal] = 'ÑÅÐÅÁÐÎ',1,0) Serebro
	  ,[Metal]
      ,IIF([MetalColor] = '×ÅÐÍÛÉ',1,0) ColorBlack
	  ,IIF([MetalColor] = 'ÊÐÀÑÍÛÉ',1,0) ColorRed
	  ,IIF([MetalColor] = 'ÆÅËÒÛÉ',1,0) ColorYellow
	  ,IIF([MetalColor] = 'ÁÅËÛÉ',1,0) ColorWhite
	  ,IIF([MetalColor] = 'ÁÅÇ ÌÅÒÀËËÀ',1,0) ColorBez
	  ,IIF([MetalColor] = '3ÕÖÂÅÒÍ',1,0) Color3
	  ,IIF([MetalColor] = '2ÕÖÂÅÒÍ',1,0) Color2
	  ,[MetalColor]
      ,IIF([StylisticGroup] = 'ÁÀÇÀ',1,0) GroupBaza
	  ,IIF([StylisticGroup] = 'ÊËÀÑÑÈÊÀ',1,0) GroupClassic
	  ,IIF([StylisticGroup] = 'ÌÎÄÀ',1,0) GroupModa
	  ,IIF([StylisticGroup] = 'ÌÎÄÓËÜ',1,0) GroupModul
	  ,IIF([StylisticGroup] = 'ÑÓÂÅÍÈÐÛ',1,0) GroupSouvenir
	  ,IIF([StylisticGroup] = 'ÒÐÅÍÄ',1,0) GroupTrend
	  ,[StylisticGroup]
	  ,Ins
	  ,IIF(Ins Is NULL,1,0) NoIns
	  ,IIF(Ins  = 'ÔÈÀÍÈÒ' ,1,0) Fianit
	  ,IIF(Ins  = 'ÁÐÈËËÈÀÍÒ' ,1,0) Diamond
	  ,IIF(Ins  = 'ÑÒÅÊËÎ' ,1,0) Glass
	  ,IIF(Ins  = 'ÒÎÏÀÇ' ,1,0) Topaz
	  ,IIF(Ins  = 'ÆÅÌ×ÓÃ' ,1,0) Pearl
	  ,IIF(Ins  = 'ÏËÀÑÒÈÊ' ,1,0) Plastik
	  ,IIF(Ins  = 'ÃÐÀÍÀÒ' ,1,0) Granat
	  ,IIF(Ins  = 'ÖÈÐÊÎÍ' ,1,0) Cirkon
	  ,IIF(Ins  = 'ÑÂÀÐÎÂÑÊÈ' ,1,0) Swarovski
	  ,IIF(Ins  = 'ÑÀÏÔÈÐ' ,1,0) Sapfir
	  ,b.Type
	  ,IIF(b.Type  = '2=1' ,1,0) DvaRavnoOdin
	  ,IIF(b.Type  = 'Ñêèäêà' ,1,0) Discount
	  ,IIF(b.Type  = 'Ñêèäêà+Áàëëû' ,1,0) Points
	  ,IIF(b.Type  = 'ÏÄ' ,1,0) Sertifikat
	  ,IIF(b.Type  = 'Ðàñïðîäàæà' ,1,0) SellOut
	  ,IIF(b.Type  = 'ØÎÊ' ,1,0) Shock
	  into TempPurch
  FROM [Gold585].[dbo].[Purchase] a
  Left join NewSMSType b on a.text = b.TEXT
  WHERE [GroupID] Not in (283,1696)  --and CAST(IIF([SummaAfterDiscount] = '','0',replace([SummaAfterDiscount],',','.')) as float) > 0 --and tpg_585 not in (N'ÑÈ_ÏÎÄÀÐÊÈ')
  and PartnerID <> 0 and Name NOT Like ('Ôóòëÿð%')
  Order BY PartnerID, [PurchaseDate]

--Âûïîëíÿåòñÿ 10 ìèíóò

 --Select top 100 * from TempPurch where PartnerID = 5170116 order by [PurchaseDate] 
 --Select Max(PurchaseDate) From TempPurch
 --Select Count(DISTINCT PurchaseCode) SumP, EOMONTH(PurchaseDate) Period, Sum(SMS) SMS From TempPurch Group BY EOMONTH(PurchaseDate) order by EOMONTH(PurchaseDate)

 --Select TOP 100 * FROM TempPurch1
 --drop table TempPurch1

drop table Temp11
Select a.[PurchaseDate],MAX(a.[PurchaseCode]) [PurchaseCode],a.[PartnerID],[Sex],[CityID],BirthDate, SMS SMS_1,b.LastDate, DATEDIFF(DAY,b.LastDate, a.[PurchaseDate]) FromLastPurchM, b.NEXTDate,
	AVG(SMS) SMS,SUM([Quantity]) [Quantity],SUM([SummaAfterDiscount]) [SummaAfterDiscount],
	SUM(M1) M1,SUM(M2) M2,SUM(M3) M3,SUM(M4) M4,SUM(M5) M5,SUM(M6) M6,SUM(M7) M7,SUM(M8) M8,SUM(M9) M9,SUM(M10) M10,SUM(M11) M11,SUM(M12) M12,
	SUM(P1k) P1k,SUM(P3k) P3k,SUM(P6k) P6k,SUM(P12k) P12k,SUM(P50k) P50k,SUM(Kolco) Kolco,SUM(SERGI) SERGI,SUM(PODVES) PODVES,SUM(CEP) CEP,SUM(BRASLET) BRASLET,
	SUM(KOLE) KOLE,SUM(Cheap) Cheap,SUM(Expensive) Expensive,SUM(Premium) Premium,SUM(Middle) Middle,
	SUM(Zoloto) Zoloto,SUM(Serebro) Serebro,SUM(ColorBlack) ColorBlack,SUM(ColorRed) ColorRed,SUM(ColorYellow) ColorYellow,SUM(ColorWhite) ColorWhite,
	SUM(Color3) Color3,SUM(Color2) Color2,SUM(GroupBaza) GroupBaza,SUM(GroupClassic) GroupClassic,SUM(GroupModa) GroupModa,
	SUM(GroupModul) GroupModul,SUM(GroupSouvenir) GroupSouvenir,SUM(GroupTrend) GroupTrend, Sum(NoIns) NoIns, Sum(Fianit) Fianit,Sum(Diamond) Diamond,
	Sum(Glass) Glass,Sum(Topaz) Topaz,Sum(Pearl) Pearl,Sum(Plastik) Plastik,Sum(Granat) Granat,Sum(Cirkon) Cirkon,Sum(Swarovski) Swarovski,Sum(Sapfir) Sapfir,
	SUM(DvaRavnoOdin) DvaRavnoOdin, SUM(Discount) Discount, SUM(Points) Points, SUM(Sertifikat) Sertifikat, SUM(SellOut) SellOut, SUM(Shock) Shock
	into Temp11
	from TempPurch a left join TempDate2 b on a.[PartnerID] = b.[PartnerID] and a.[PurchaseDate] = b.[PurchaseDate]
	group by a.[PartnerID], a.[PurchaseDate],[Sex],[CityID], BirthDate, DATEDIFF(DAY,b.LastDate, a.[PurchaseDate]),b.LastDate,NEXTDate,SMS
-- Select top 100 * from Temp11 where PartnerID = 5170116 order by [PurchaseDate]
-- Select Count(DISTINCT PurchaseCode) SumP, EOMONTH(PurchaseDate) Period, Sum(SMS) SMS From Temp11 Group BY EOMONTH(PurchaseDate) order by EOMONTH(PurchaseDate)


 drop table TempPurch2   --Äàííûå äëÿ îáó÷åíèÿ
  Select DISTINCT a.[PurchaseDate],a.[PurchaseCode], a.[PartnerID],a.[Sex],a.[CityID], a.BirthDate,a.LastDate,a.NEXTDate,a.SMS_1
 ,MIN(b.[PurchaseDate]) FirstVisit
 ,AVG(b.FromLastPurchM) AVGFromLastPurchM
 ,COUNT(DISTINCT b.[PurchaseDate]) QNTVisits
 ,Sum(b.SMS) SumSMS
 ,SUM(b.Quantity) SumQuantity
 ,SUM(b.[SummaAfterDiscount]) SumSumma
 ,AVG(b.[SummaAfterDiscount]) AVGSumma
	,SUM(b.M1) SUMM1
	,SUM(b.M2) SUMM2
	,SUM(b.M3) SUMM3
	,SUM(b.M4) SUMM4
	,SUM(b.M5) SUMM5
	,SUM(b.M6) SUMM6
	,SUM(b.M7) SUMM7
	,SUM(b.M8) SUMM8
	,SUM(b.M9) SUMM9
	,SUM(b.M12) SUMM10
	,SUM(b.M11) SUMM11
	,SUM(b.M12) SUMM12
	,SUM(b.P1k) SUMP1k
	,SUM(b.P3k) SUMP3k
	,SUM(b.P6k) SUMP6k
	,SUM(b.P12k) SUMP12k
	,SUM(b.P50k) SUMP50k
    ,SUM(b.Kolco) SUMKolco
	,SUM(b.SERGI) SUMSERGI
	,SUM(b.PODVES) SUMPODVES
	,SUM(b.CEP) SUMCEP
	,SUM(b.BRASLET) SUMBRASLET
	,SUM(b.KOLE) SUMKOLE
    ,SUM(b.Cheap) SUMCheap
	,SUM(b.Expensive) SUMExpensive
	,SUM(b.Premium) SUMPremium
	,SUM(b.Middle) SUMMiddle
    ,SUM(b.Zoloto) SUMZoloto
	,SUM(b.Serebro) SUMSerebro
    ,SUM(b.ColorBlack) SUMColorBlack
	,SUM(b.ColorRed) SUMColorRed
	,SUM(b.ColorYellow) SUMColorYellow
	,SUM(b.ColorWhite) SUMColorWhite
	,SUM(b.Color3) SUMColor3
	,SUM(b.Color2) SUMColor2 
    ,SUM(b.GroupBaza) SUMGroupBaza
	,SUM(b.GroupClassic) SUMGroupClassic
	,SUM(b.GroupModa) SUMGroupModa
	,SUM(b.GroupModul) SUMGroupModul
	,SUM(b.GroupSouvenir) SUMGroupSouvenir
	,SUM(b.GroupTrend) SUMGroupTrend  
	,Sum(b.NoIns) SUMNoIns
	,Sum(b.Fianit) SUMFianit
	,Sum(b.Diamond) SUMDiamond
	,Sum(b.Glass) SUMGlass
	,Sum(b.Topaz) SUMTopaz
	,Sum(b.Pearl) SUMPearl
	,Sum(b.Plastik) SUMPlastik
	,Sum(b.Granat) SUMGranat
	,Sum(b.Cirkon) SUMCirkon
	,Sum(b.Swarovski) SUMSwarovski
	,Sum(b.Sapfir) SUMSapfir
	,SUM(b.DvaRavnoOdin) SUMDvaRavnoOdin
	,SUM(b.Discount) SUMDiscount
	,SUM(b.Points) SUMPoints
	,SUM(b.Sertifikat) SUMSertifikat
	,SUM(b.SellOut) SUMSellOut
	,SUM(b.Shock) SUMShock
	into TempPurch2
  FROM Temp11 a left join Temp11 b on b.[PartnerID] = a.[PartnerID] and CAST(a.[PurchaseDate] AS DATE) > CAST(b.[PurchaseDate] AS DATE)
  group by  a.[PartnerID], a.[PurchaseDate],a.[PurchaseCode],a.[Sex],a.[CityID], a.BirthDate,a.LastDate,a.NEXTDate,a.SMS_1

--  Select top 100 * from TempPurch2 where PartnerID = 5170116 order by [PurchaseDate]
--  Select top 100 * from ##Temp1 where PartnerID = 5170116 order by [PurchaseDate]
  
  
	drop table TempPurch3   --Äàííûå äëÿ ïðîãíîçèðîâàíèÿ
	
	Select a.[PurchaseDate], a.[PurchaseCode], a.[PartnerID],a.[Sex],a.[CityID], a.BirthDate,a.LastDate,a.NEXTDate,a.SMS_1
		,MIN(b.[PurchaseDate]) FirstVisit
		,AVG(b.FromLastPurchM) AVGFromLastPurchM
		,COUNT(b.[PurchaseDate]) QNTVisits
		,Sum(b.SMS) SumSMS
		,SUM(b.Quantity) SumQuantity
		,SUM(b.[SummaAfterDiscount]) SumSumma
		,AVG(b.[SummaAfterDiscount]) AVGSumma
		,SUM(b.M1) SUMM1
		,SUM(b.M2) SUMM2
		,SUM(b.M3) SUMM3
		,SUM(b.M4) SUMM4
		,SUM(b.M5) SUMM5
		,SUM(b.M6) SUMM6
		,SUM(b.M7) SUMM7
		,SUM(b.M8) SUMM8
		,SUM(b.M9) SUMM9
		,SUM(b.M12) SUMM10
		,SUM(b.M11) SUMM11
		,SUM(b.M12) SUMM12
		,SUM(b.P1k) SUMP1k
		,SUM(b.P3k) SUMP3k
		,SUM(b.P6k) SUMP6k
		,SUM(b.P12k) SUMP12k
		,SUM(b.P50k) SUMP50k
		,SUM(b.Kolco) SUMKolco
		,SUM(b.SERGI) SUMSERGI
		,SUM(b.PODVES) SUMPODVES
		,SUM(b.CEP) SUMCEP
		,SUM(b.BRASLET) SUMBRASLET
		,SUM(b.KOLE) SUMKOLE
		,SUM(b.Cheap) SUMCheap
		,SUM(b.Expensive) SUMExpensive
		,SUM(b.Premium) SUMPremium
		,SUM(b.Middle) SUMMiddle
		,SUM(b.Zoloto) SUMZoloto
		,SUM(b.Serebro) SUMSerebro
		,SUM(b.ColorBlack) SUMColorBlack
		,SUM(b.ColorRed) SUMColorRed
		,SUM(b.ColorYellow) SUMColorYellow
		,SUM(b.ColorWhite) SUMColorWhite
		,SUM(b.Color3) SUMColor3
		,SUM(b.Color2) SUMColor2 
		,SUM(b.GroupBaza) SUMGroupBaza
		,SUM(b.GroupClassic) SUMGroupClassic
		,SUM(b.GroupModa) SUMGroupModa
		,SUM(b.GroupModul) SUMGroupModul
		,SUM(b.GroupSouvenir) SUMGroupSouvenir
		,SUM(b.GroupTrend) SUMGroupTrend 
		,Sum(b.NoIns) SUMNoIns
		,Sum(b.Fianit) SUMFianit
		,Sum(b.Diamond) SUMDiamond
		,Sum(b.Glass) SUMGlass
		,Sum(b.Topaz) SUMTopaz
		,Sum(b.Pearl) SUMPearl
		,Sum(b.Plastik) SUMPlastik
		,Sum(b.Granat) SUMGranat
		,Sum(b.Cirkon) SUMCirkon
		,Sum(b.Swarovski) SUMSwarovski
		,Sum(b.Sapfir) SUMSapfir 
		,SUM(b.DvaRavnoOdin) SUMDvaRavnoOdin
		,SUM(b.Discount) SUMDiscount
		,SUM(b.Points) SUMPoints
		,SUM(b.Sertifikat) SUMSertifikat
		,SUM(b.SellOut) SUMSellOut
		,SUM(b.Shock) SUMShock
	into TempPurch3
	FROM Temp11 a left join Temp11 b on b.[PartnerID] = a.[PartnerID] and a.[PurchaseDate] >= b.[PurchaseDate]
	group by a.[PurchaseDate],a.[PurchaseCode], a.[PartnerID],a.[Sex],a.[CityID], a.BirthDate,a.LastDate,a.NEXTDate,a.SMS_1
  

 --  Select EOMONTH([PurchaseDate]) Period, COUNT(PurchaseCode) SumP, SUM(SumSMS) SumSMS  from TempPurch3 Where QNTVisits =1 Group by EOMONTH([PurchaseDate]) Order BY EOMONTH([PurchaseDate])
 --  Select EOMONTH([PurchaseDate]) Period, COUNT(PurchaseCode) SumP, SUM(IIF(SumSMS=0,0,1)) SumSMS  from TempPurch3 Where QNTVisits >1 Group by EOMONTH([PurchaseDate]) Order BY EOMONTH([PurchaseDate])
 --  Select top 100 * from TempPurch3 where PartnerID = 5170116 order by [PurchaseDate]
    

 --Select TOP 100 * from TempPurch3 where PartnerID = 4284242
 --drop table TempT

  /*
  Select Distinct [PurchaseDate],PartnerID 
  into TempT
  from TempPurch
  */
  drop table TempT
  Select PartnerID,[CityID], [PurchaseDate], IIF(LEAD(PartnerID,1,NULL) over (partition BY PartnerID  ORDER BY PartnerID,[PurchaseDate]) = PartnerID,0,1) LastP
  ,QNTVisits, DATEDIFF(DAY, [PurchaseDate], '20181231') Dif
  into TempT
  from [TempPurch3]
  Where [PurchaseDate] > '20130101'
  order by PartnerID,[PurchaseDate]



  drop table TempDate2
  Select DISTINCT PurchaseDate, a.PartnerID,
  IIF(LAG(a.PartnerID,1,NULL) over (ORDER BY a.PartnerID,a.[PurchaseDate]) = a.PartnerID,
	LAG(a.[PurchaseDate],1,NULL) over (ORDER BY a.PartnerID,a.[PurchaseDate]),NULL) LastDate,

  IIF(LEAD(a.PartnerID,1,NULL) over (ORDER BY a.PartnerID,a.[PurchaseDate]) = a.PartnerID,
	LEAD(a.[PurchaseDate],1,NULL) over (ORDER BY a.PartnerID,a.[PurchaseDate]),NULL) NEXTDate

--  ,IIF(b.[PurchaseDateTime] IS NOT NULL,1,0) GodNazad
  into TempDate2
  from TempT a --left join ##TempT b on a.PartnerID = b.PartnerID and (DATEDIFF(month,b.[PurchaseDateTime],a.[PurchaseDateTime])) BETWEEN 11 and 13
  order by a.PartnerID, [PurchaseDate]
  
  -- Select top 100 * from ##TempDate where PartnerID = 5170116 order by [PurchaseDate]

  --Select TOP 10 * from TempDate
  drop table TempDate
   Select DISTINCT a.PurchaseDate, a.PartnerID
--  ,IIF(LAG(a.PartnerID,1,NULL) over (ORDER BY a.PartnerID,a.[PurchaseDate]) = a.PartnerID
--	,LAG(a.[PurchaseDate],1,NULL) over (ORDER BY a.PartnerID,a.[PurchaseDate]),NULL) LastDate
--  ,IIF(LEAD(a.PartnerID,1,NULL) over (ORDER BY a.PartnerID,a.[PurchaseDate]) = a.PartnerID
--	,LEAD(a.[PurchaseDate],1,NULL) over (ORDER BY a.PartnerID,a.[PurchaseDate]),NULL) NEXTDate
  ,IIF(b.[PurchaseDate] IS NOT NULL,1,0) GodNazad
  ,IIF(c.[PurchaseDate] IS NOT NULL,1,0) God2Nazad
  ,IIF(d.[PurchaseDate] IS NOT NULL,1,0) God3Nazad
  into TempDate
  from TempT a left join TempT b on a.PartnerID = b.PartnerID and CAST(a.[PurchaseDate] as DATE) > CAST(b.[PurchaseDate] as DATE)
  and (DATEDIFF(DAY,b.[PurchaseDate] ,a.[PurchaseDate])) BETWEEN 345 and 385
  left join TempT c on a.PartnerID = c.PartnerID and CAST(a.[PurchaseDate]  as DATE)> CAST(c.[PurchaseDate]  as DATE)
  and (DATEDIFF(DAY,c.[PurchaseDate] ,a.[PurchaseDate])) BETWEEN 710 and 750
  left join TempT d on a.PartnerID = d.PartnerID and CAST(a.[PurchaseDate]  as DATE)> CAST(d.[PurchaseDate]  as DATE)
  and (DATEDIFF(DAY,d.[PurchaseDate] ,a.[PurchaseDate])) BETWEEN 1075 and 1115

  --Âûïîëíÿåòñÿ ïîë ÷àñà

 -- Select top 100 * from ##TempDate where PartnerID = 5170116 order by [PurchaseDate]
  

  drop table PurchaseGrid
  SELECT [ind],[Period],Month([Period]) Month
	  ,MAX(PurchaseDate) PurchaseDate 
      ,[PartnerID]
      ,[Sex]
      ,[CityID]
      ,[BirthDate]
      ,MAX([LastDate]) [LastDate]
      ,MAX([NEXTDate]) [NEXTDate]
      ,MAX([SMS_1]) [SMS_1] --åñëè áûë îäèèí âèçèò ïî ñìñ, òî äàëüøå âñåãäà áóäåò 1
      ,MAX([FirstVisit]) [FirstVisit]
      ,MAX([AVGFromLastPurchM]) [AVGFromLastPurchM]
      ,MAX([QNTVisits]) [QNTVisits]
      ,MAX([SumSMS]) [SumSMS]
      ,MAX([SumQuantity]) [SumQuantity]
      ,MAX([SumSumma]) [SumSumma]
      ,MAX([AVGSumma]) [AVGSumma]
      ,MAX([SUMM1]) [SUMM1]
      ,MAX([SUMM2]) [SUMM2]
      ,MAX([SUMM3]) [SUMM3]
      ,MAX([SUMM4]) [SUMM4]
      ,MAX([SUMM5]) [SUMM5]
      ,MAX([SUMM6]) [SUMM6]
      ,MAX([SUMM7]) [SUMM7]
      ,MAX([SUMM8]) [SUMM8] 
      ,MAX([SUMM9]) [SUMM9] 
      ,MAX([SUMM10]) [SUMM10]
      ,MAX([SUMM11]) [SUMM11]
      ,MAX([SUMM12]) [SUMM12]
      ,MAX([SUMP1k]) [SUMP1k]
      ,MAX([SUMP3k]) [SUMP3k]
      ,MAX([SUMP6k]) [SUMP6k]
      ,MAX([SUMP12k]) [SUMP12k]
      ,MAX([SUMP50k]) [SUMP50k]
      ,MAX([SUMKolco]) [SUMKolco]
      ,MAX([SUMSERGI]) [SUMSERGI]
      ,MAX([SUMPODVES]) [SUMPODVES]
      ,MAX([SUMCEP]) [SUMCEP]
      ,MAX([SUMBRASLET]) [SUMBRASLET]
      ,MAX([SUMKOLE]) [SUMKOLE]
      ,MAX([SUMCheap]) [SUMCheap]
      ,MAX([SUMExpensive]) [SUMExpensive]
      ,MAX([SUMPremium]) [SUMPremium]
      ,MAX([SUMMiddle]) [SUMMiddle]
      ,MAX([SUMZoloto]) [SUMZoloto]
      ,MAX([SUMSerebro]) [SUMSerebro]
      ,MAX([SUMColorBlack]) [SUMColorBlack]
      ,MAX([SUMColorRed]) [SUMColorRed]
      ,MAX([SUMColorYellow]) [SUMColorYellow]
      ,MAX([SUMColorWhite]) [SUMColorWhite]
      ,MAX([SUMColor3]) [SUMColor3]
      ,MAX([SUMColor2]) [SUMColor2]
      ,MAX([SUMGroupBaza]) [SUMGroupBaza]
      ,MAX([SUMGroupClassic]) [SUMGroupClassic]
      ,MAX([SUMGroupModa]) [SUMGroupModa]
      ,MAX([SUMGroupModul]) [SUMGroupModul]
      ,MAX([SUMGroupSouvenir]) [SUMGroupSouvenir]
      ,MAX([SUMGroupTrend]) [SUMGroupTrend]
	  into PurchaseGrid
  FROM [Gold585].[dbo].[MonthMapping] m 
  left join [Gold585].[dbo].[TempPurch3] a 
  on [PurchaseDate]<= Period and Period > '20160901' and Period < '20181230'
  Where DAY(Period) <>15 -- and PartnerID = 5170116 
  group by [ind],[Period],[PartnerID],[Sex],[CityID],[BirthDate],Month([Period])
  order by Period,PurchaseDate


 -- Select Period, Sum(IIF(EOMONTH(PurchaseDate) = EOMONTH(Period),1,0)) SumP  from PurchaseGrid Group by Period Order by Period
  --ñêðèïò äëÿ ïðåäñêàçàíèÿ
  drop table PurchaseGridForPred
  	SELECT --TOP 1000 --[ind]
      [Period]
      ,[Month]
	  ,DateDiff(DAY, a.[PurchaseDate], Period)/30.0 FromLastP
	  ,DateDiff(DAY, a.[FirstVisit], Period)/30.0 FromFirstP
	  ,IIF((DateDiff(DAY, Period, a.[NEXTDate])>=0 and DateDiff(DAY, Period, a.[NEXTDate])<=31),1,0) VisitInCurrentMonth
	  ,IIF(a.[NEXTDate]>Period, b.SMS * IIF((DateDiff(DAY, Period, a.[NEXTDate])>=0 and DateDiff(DAY, Period, a.[NEXTDate])<=31),1,0),0) PoSMS
	  ,IIF(a.[NEXTDate]>a.[PurchaseDate],1,0) BudetVisit
 --     ,a.[PurchaseDate]
      ,a.[PartnerID]
      ,IIF(a.[Sex] = 'M',1,0) Sex
      ,a.[CityID]
      ,IIF(DATEDIFF(YEAR,a.[BirthDate],[Period])> 100 , 0 , DATEDIFF(YEAR,a.[BirthDate],[Period])) Age
 --     ,a.[LastDate]
 --     ,a.[NEXTDate]
 --     ,[FirstVisit]
      ,[AVGFromLastPurchM]/30.0 [AVGFromLastPurchM]
      ,[QNTVisits]
      ,[SumSMS]
      ,[SumQuantity]
      ,[SumSumma]
      ,[AVGSumma]
      ,[SUMM1]
      ,[SUMM2]
      ,[SUMM3]
      ,[SUMM4]
      ,[SUMM5]
      ,[SUMM6]
      ,[SUMM7]
      ,[SUMM8]
      ,[SUMM9]
      ,[SUMM10]
      ,[SUMM11]
      ,[SUMM12]
      ,[SUMP1k]
      ,[SUMP3k]
      ,[SUMP6k]
      ,[SUMP12k]
      ,[SUMP50k]
      ,[SUMKolco]
      ,[SUMSERGI]
      ,[SUMPODVES]
      ,[SUMCEP]
      ,[SUMBRASLET]
      ,[SUMKOLE]
      ,[SUMCheap]
      ,[SUMExpensive]
      ,[SUMPremium]
      ,[SUMMiddle]
      ,[SUMZoloto]
      ,[SUMSerebro]
      ,[SUMColorBlack]
      ,[SUMColorRed]
      ,[SUMColorYellow]
      ,[SUMColorWhite]
      ,[SUMColor3]
      ,[SUMColor2]
      ,[SUMGroupBaza]
      ,[SUMGroupClassic]
      ,[SUMGroupModa]
      ,[SUMGroupModul]
      ,[SUMGroupSouvenir]
      ,[SUMGroupTrend]
	  into PurchaseGridForPred
  FROM [Gold585].[dbo].[PurchaseGrid1] a 
  left join Temp11 b on a.PartnerID = b.PartnerID and MONTH(a.NextDate) = MONTH(b.[PurchaseDate]) and YEAR(a.NextDate) = YEAR(b.[PurchaseDate])
 -- Where a.partnerID = 1478881 --  [SMS_1] = 1
  order by Period

  
 -- Select Sum(VisitInCurrentMonth) Visits, Sum(PoSMS) Sms,  Period  from PurchaseGridForPred Group by Period order by Period
 








  Select Count(*) from TempPurch1
  Select Count(*) from ForPredict
  --Select top 100 * from ForPredict where PartnerID = 5170116 order by [PurchaseDate]
  Select top 100 * from TempPurch2 where PartnerID = 4284242
  --Ïðîâåðêà
  Select top 100 * from ForPredict where PartnerID = 5170116 order by [PurchaseDate]
  Select top 100 * from TempPurch1 where PartnerID = 5170116 order by [PurchaseDate]
  Select top 100 * from TempT where PartnerID = 5170116 order by [PurchaseDate]
  Select top 100 * from TempDate where PartnerID = 5170116 order by [PurchaseDate]
  Select top 100 * from ##TempDate where PartnerID = 5170116 order by [PurchaseDate]
  Select top 100 * from TempPurch2 where PartnerID = 5170116 order by [PurchaseDate]
    
  drop table ##TempDate

  drop table TempPurch22

  --Ñåòêà äëÿ ÷åêîâ - ñòàðàÿ

   Select DISTINCT 
   [ind],[Period], (a.[PartnerID]
   Max(a.[PurchaseDate]) [PurchaseDate], Max) [PartnerID],
   MAX(a.[Sex]) [Sex], MAX(a.[CityID]) [CityID], MAX(a.BirthDate) BirthDate,MAX(b.LastDate)  LastDate
 ,MIN(b.[PurchaseDate]) FirstVisit
 ,AVG(b.FromLastPurchM) AVGFromLastPurchM
 ,COUNT(DISTINCT b.[PurchaseDate]) QNTVisits
 ,Sum(b.SMS) SumSMS
 ,SUM(b.Quantity) SumQuantity
 ,SUM(b.[SummaAfterDiscount]) SumSumma
 ,AVG(b.[SummaAfterDiscount]) AVGSumma
	,SUM(b.M1) SUMM1
	,SUM(b.M2) SUMM2
	,SUM(b.M3) SUMM3
	,SUM(b.M4) SUMM4
	,SUM(b.M5) SUMM5
	,SUM(b.M6) SUMM6
	,SUM(b.M7) SUMM7
	,SUM(b.M8) SUMM8
	,SUM(b.M9) SUMM9
	,SUM(b.M12) SUMM10
	,SUM(b.M11) SUMM11
	,SUM(b.M12) SUMM12
	,SUM(b.P1k) SUMP1k
	,SUM(b.P3k) SUMP3k
	,SUM(b.P6k) SUMP6k
	,SUM(b.P12k) SUMP12k
	,SUM(b.P50k) SUMP50k
    ,SUM(b.Kolco) SUMKolco
	,SUM(b.SERGI) SUMSERGI
	,SUM(b.PODVES) SUMPODVES
	,SUM(b.CEP) SUMCEP
	,SUM(b.BRASLET) SUMBRASLET
	,SUM(b.KOLE) SUMKOLE
    ,SUM(b.Cheap) SUMCheap
	,SUM(b.Expensive) SUMExpensive
	,SUM(b.Premium) SUMPremium
	,SUM(b.Middle) SUMMiddle
    ,SUM(b.Zoloto) SUMZoloto
	,SUM(b.Serebro) SUMSerebro
    ,SUM(b.ColorBlack) SUMColorBlack
	,SUM(b.ColorRed) SUMColorRed
	,SUM(b.ColorYellow) SUMColorYellow
	,SUM(b.ColorWhite) SUMColorWhite
	,SUM(b.Color3) SUMColor3
	,SUM(b.Color2) SUMColor2 
    ,SUM(b.GroupBaza) SUMGroupBaza
	,SUM(b.GroupClassic) SUMGroupClassic
	,SUM(b.GroupModa) SUMGroupModa
	,SUM(b.GroupModul) SUMGroupModul
	,SUM(b.GroupSouvenir) SUMGroupSouvenir
	,SUM(b.GroupTrend) SUMGroupTrend  
	into TempPurch22
  FROM [Gold585].[dbo].[MonthMapping] m left join Temp11 a on m.Period> a.[PurchaseDate]
  left join Temp11 b on b.[PartnerID] = a.[PartnerID] and CAST(a.[PurchaseDate] AS DATE) > CAST(b.[PurchaseDate] AS DATE)
  Where DAY(Period) <>15 and Period > '20180101'
  group by  Period,[ind],[PartnerID]

  /*
  Select top 10 *
  from Purchase
  where 1=2

  Select 
  PartnerID
  From Purchase
  Where SummaAfterDiscount > ALL

  */