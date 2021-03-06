
SELECT distinct [RIPA].[dbo].[JSONSTOP_Person_ReasonForStop_vw].[StopID]
      ,[PID]
      ,[reasonForStopExplanation]
  FROM [RIPA].[dbo].[JSONSTOP_Person_ReasonForStop_vw]
  join   [RIPA].[dbo].[JSONSTOP_Main_JSON_vw]
  on [RIPA].[dbo].[JSONSTOP_Main_JSON_vw].[StopID] =
	[RIPA].[dbo].[JSONSTOP_Person_ReasonForStop_vw].[StopID]
where stopDate > '2018-06-30'
order by [RIPA].[dbo].[JSONSTOP_Person_ReasonForStop_vw].[StopID]

SELECT  distinct [JSONSTOP_Person_ActionsTaken_BasisForSearch_vw].[StopID]
      ,[PID]
      ,[basisForSearchExplanation]
  FROM [RIPA].[dbo].[JSONSTOP_Person_ActionsTaken_BasisForSearch_vw]
    join   [RIPA].[dbo].[JSONSTOP_Main_JSON_vw]
  on [RIPA].[dbo].[JSONSTOP_Main_JSON_vw].[StopID] =
	[RIPA].[dbo].[JSONSTOP_Person_ActionsTaken_BasisForSearch_vw].[StopID]
where stopDate > '2018-06-30' and basisForSearchExplanation != ''
order by  [JSONSTOP_Person_ActionsTaken_BasisForSearch_vw].[StopID]
