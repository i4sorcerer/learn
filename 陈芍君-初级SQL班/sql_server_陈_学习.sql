


--CASE WHEN ����
select
case dbo.�g��.����
when 5.0 then '��'
when 6.0 then '����'
ELSE '��' END AS GS1,
case 
when dbo.�g��.���� < 5.0 then '��'
when dbo.�g��.���� BETWEEN 5.0 AND 6.0 then '����'
ELSE '��' END AS GS2,
 dbo.�g��.�YԴ���`��,dbo.�g��.���� from dbo.�g��



1 �����ʱֱ���� count��1�� nullֵ���ܱ�ͳ��
2 �� group by ʱ���Է����Ľ������ɸѡ�� having�������� where��
  �Է���ǰ�Ľ������ɸѡ������ where��
3 sum,count,max,min,avgƽ��
4 �Ӳ�ѯ
	1��GROUP BY��ѯ��Ľ����Ϊ��ʱ���ٺ����������JOIN
	2��WHEREɸѡ֮��Ľ����Ϊ��ʱ���ٺ����������JOIN
	
  

�ɲ�������sql��

select dbo.�YԴ.�YԴ��,sum(dbo.�g��.����) as ��Ӌ�r�g,count(1) ��Ӌ����,max(dbo.�g��.����) ���,min(dbo.�g��.����) ��С��,
avg(dbo.�g��.����) ƽ���r�g from dbo.�g��
left join dbo.�YԴ
on dbo.�g��.�YԴ���`��=dbo.�YԴ.�YԴ���`��
group by dbo.�YԴ.�YԴ��
having avg(dbo.�g��.����) between 3 and 3.5
 
 
 --GROUP BY�Ӳ�ѯ����
SELECT �YԴ.*,MXGS AS ����� FROM 
--GROUP BY �Ӳ�ѯ��
(SELECT �YԴ���`��,MAX(����) MXGS FROM DBO.�g�� GROUP BY �YԴ���`��) MAXGSTABLE
--��������Ӳ�ѯ��Ľ���ٽ���LEFT JOIN
LEFT JOIN DBO.�YԴ
ON �YԴ.�YԴ���`�� = MAXGSTABLE.�YԴ���`��
ORDER BY ����� DESC

SELECT �YԴ.�YԴ���`�� ,max(MAXGSTABLE.����) FROM 
--where �Ӳ�ѯ��
(SELECT * from �g�� where �g��.�YԴ���`�� = '26898') MAXGSTABLE
--��������Ӳ�ѯ��Ľ���ٽ���left join
LEFT JOIN dbo.�YԴ
ON �YԴ.�YԴ���`�� = MAXGSTABLE.�YԴ���`��
group by �YԴ.�YԴ���`�� 



select '�g������' as '�g������',dbo.�YԴ.�YԴ���`��,dbo.�YԴ.�YԴ��,dbo.�Ʃ`��.�Ʃ`����,dbo.�g��.���h�� as '������',
dbo.�g��.����,����.������ + '(�ձ�)' as ������,dbo.����.������ from dbo.�YԴ
left join dbo.�g��
on dbo.�YԴ.�YԴ���`��=dbo.�g��.�YԴ���`��
left join dbo.�Ʃ`��
on dbo.�g��.�Ʃ`�ޥ��`��=dbo.�Ʃ`��.�Ʃ`�޷���
left join dbo.����
on  dbo.�YԴ.���祳�`��=dbo.����.���祳�`��
left join dbo.����
on dbo.�g��.���̥��`��=dbo.����.���̥��`��
--where  (dbo.�g��.���h�� like '2018%' and dbo.�YԴ.�YԴ��='����') or (dbo.�g��.���h�� like '2018-05%' and dbo.�YԴ.�YԴ��='ɽ��')
--where dbo.����.������ in ('�����OӋ','Փ���OӋ') and dbo.�YԴ.�YԴ�� not in ('����','ɽ��')
--where dbo.�g��.���� >= 1 and dbo.�g��.���� <= 3
--where dbo.�g��.���� between 1 and 3
order by dbo.�g��.���h�� desc ,dbo.�YԴ.�YԴ���`�� asc




select '�g������' as '�g������',dbo.�YԴ.�YԴ���`��,dbo.�YԴ.�YԴ��,dbo.�Ʃ`��.�Ʃ`����,dbo.�g��.���h�� as '������',
dbo.�g��.����,.����.������,dbo.����.������ from dbo.�YԴ
left join dbo.�g��
on dbo.�YԴ.�YԴ���`��=dbo.�g��.�YԴ���`��
left join dbo.�Ʃ`��
on dbo.�g��.�Ʃ`�ޥ��`��=dbo.�Ʃ`��.�Ʃ`�޷���
left join dbo.����
on  dbo.�YԴ.���祳�`��=dbo.����.���祳�`��
left join dbo.����
on dbo.�g��.���̥��`��=dbo.����.���̥��`��
----where  dbo.�g��.���h�� like '2018%'
order by dbo.�g��.���h�� desc ,dbo.�YԴ.�YԴ���`�� asc



select * from dbo.����
inner join dbo.�g��
on dbo.����.���̥��`��=dbo.�g��.���̥��`��
where ������ like '%�ƥ���'

delete from dbo.����
where ������ like '%�_�k%'
insert into dbo.���� values ('11111','�_�kһ��',3)
insert into dbo.���� values ('11112','�_�k����',3)
insert into dbo.���� values ('11113','�_�k����',4)
insert into dbo.���� values ('11114','���g��',1)
insert into dbo.���� values ('11115','�\�в�',1)
insert into dbo.���� values ('11116','IT�ͥå����M��',1)



----select * from dbo.����

����

insert into dbo.�g��(���̥��`��,�g��) values ('1000000001',40000);
insert into dbo.�g��(���̥��`��,�g��) values ('1000000002',50000);
insert into dbo.�g��(���̥��`��,�g��) values ('1000000003',50000);
insert into dbo.�g��(���̥��`��,�g��) values ('1000000004',40000);
insert into dbo.�g��(���̥��`��,�g��) values ('1000000005',40000);
insert into dbo.�g��(���̥��`��,�g��) values ('1000000006',50000);
insert into dbo.�g��(���̥��`��,�g��) values ('1000000007',50000);

select ������ from dbo.���� where ���̥��`�� like '%0000%' 

select dbo.����.* , dbo.�g��.�g�� from dbo.���� 
left join 
dbo.�g��
on 
dbo.�g��.���̥��`�� = dbo.����.���̥��`��
where dbo.�g��.�g�� is not null
--------where ������= 'Ҫ�����x'

select * from ����

