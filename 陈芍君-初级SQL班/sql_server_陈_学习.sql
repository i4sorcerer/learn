


--CASE WHEN 例子
select
case dbo.実績.工数
when 5.0 then '少'
when 6.0 then '正常'
ELSE '多' END AS GS1,
case 
when dbo.実績.工数 < 5.0 then '少'
when dbo.実績.工数 BETWEEN 5.0 AND 6.0 then '正常'
ELSE '多' END AS GS2,
 dbo.実績.資源コード,dbo.実績.工数 from dbo.実績



1 求件数时直接用 count（1） null值不能被统计
2 用 group by 时，对分组后的结果进行筛选用 having，不能用 where。
  对分组前的结果进行筛选可以用 where。
3 sum,count,max,min,avg平均
4 子查询
	1）GROUP BY查询后的结果作为临时表，再和其他表进行JOIN
	2）WHERE筛选之后的结果作为临时表，再和其他表进行JOIN
	
  

可参照以下sql；

select dbo.資源.資源名,sum(dbo.実績.工数) as 合計時間,count(1) 合計件数,max(dbo.実績.工数) 最大値,min(dbo.実績.工数) 最小値,
avg(dbo.実績.工数) 平均時間 from dbo.実績
left join dbo.資源
on dbo.実績.資源コード=dbo.資源.資源コード
group by dbo.資源.資源名
having avg(dbo.実績.工数) between 3 and 3.5
 
 
 --GROUP BY子查询例子
SELECT 資源.*,MXGS AS 最大工数 FROM 
--GROUP BY 子查询，
(SELECT 資源コード,MAX(工数) MXGS FROM DBO.実績 GROUP BY 資源コード) MAXGSTABLE
--针对上面子查询后的结果再进行LEFT JOIN
LEFT JOIN DBO.資源
ON 資源.資源コード = MAXGSTABLE.資源コード
ORDER BY 最大工数 DESC

SELECT 資源.資源コード ,max(MAXGSTABLE.工数) FROM 
--where 子查询，
(SELECT * from 実績 where 実績.資源コード = '26898') MAXGSTABLE
--针对上面子查询后的结果再进行left join
LEFT JOIN dbo.資源
ON 資源.資源コード = MAXGSTABLE.資源コード
group by 資源.資源コード 



select '実績報告書' as '実績報告書',dbo.資源.資源コード,dbo.資源.資源名,dbo.テーマ.テーマ名,dbo.実績.登録日 as '入力日',
dbo.実績.工数,会社.会社名 + '(日本)' as 会社名,dbo.工程.工程名 from dbo.資源
left join dbo.実績
on dbo.資源.資源コード=dbo.実績.資源コード
left join dbo.テーマ
on dbo.実績.テーマコード=dbo.テーマ.テーマ番号
left join dbo.会社
on  dbo.資源.会社コード=dbo.会社.会社コード
left join dbo.工程
on dbo.実績.工程コード=dbo.工程.工程コード
--where  (dbo.実績.登録日 like '2018%' and dbo.資源.資源名='阿部') or (dbo.実績.登録日 like '2018-05%' and dbo.資源.資源名='山田')
--where dbo.工程.工程名 in ('物理設計','論理設計') and dbo.資源.資源名 not in ('阿部','山田')
--where dbo.実績.工数 >= 1 and dbo.実績.工数 <= 3
--where dbo.実績.工数 between 1 and 3
order by dbo.実績.登録日 desc ,dbo.資源.資源コード asc




select '実績報告書' as '実績報告書',dbo.資源.資源コード,dbo.資源.資源名,dbo.テーマ.テーマ名,dbo.実績.登録日 as '入力日',
dbo.実績.工数,.会社.会社名,dbo.工程.工程名 from dbo.資源
left join dbo.実績
on dbo.資源.資源コード=dbo.実績.資源コード
left join dbo.テーマ
on dbo.実績.テーマコード=dbo.テーマ.テーマ番号
left join dbo.会社
on  dbo.資源.会社コード=dbo.会社.会社コード
left join dbo.工程
on dbo.実績.工程コード=dbo.工程.工程コード
----where  dbo.実績.登録日 like '2018%'
order by dbo.実績.登録日 desc ,dbo.資源.資源コード asc



select * from dbo.工程
inner join dbo.単価
on dbo.工程.工程コード=dbo.単価.工程コード
where 工程名 like '%テスト'

delete from dbo.部署
where 部署名 like '%開発%'
insert into dbo.部署 values ('11111','開発一部',3)
insert into dbo.部署 values ('11112','開発二部',3)
insert into dbo.部署 values ('11113','開発三部',4)
insert into dbo.部署 values ('11114','技術部',1)
insert into dbo.部署 values ('11115','運行部',1)
insert into dbo.部署 values ('11116','ITネット推進部',1)



----select * from dbo.部署

以上

insert into dbo.単価(工程コード,単価) values ('1000000001',40000);
insert into dbo.単価(工程コード,単価) values ('1000000002',50000);
insert into dbo.単価(工程コード,単価) values ('1000000003',50000);
insert into dbo.単価(工程コード,単価) values ('1000000004',40000);
insert into dbo.単価(工程コード,単価) values ('1000000005',40000);
insert into dbo.単価(工程コード,単価) values ('1000000006',50000);
insert into dbo.単価(工程コード,単価) values ('1000000007',50000);

select 工程名 from dbo.工程 where 工程コード like '%0000%' 

select dbo.工程.* , dbo.単価.単価 from dbo.工程 
left join 
dbo.単価
on 
dbo.単価.工程コード = dbo.工程.工程コード
where dbo.単価.単価 is not null
--------where 工程名= '要件定義'

select * from 工程

