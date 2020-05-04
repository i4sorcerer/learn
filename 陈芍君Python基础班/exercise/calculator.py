

name1 =input('请输入名字1：')
name2 =input('请输入名字2：')
age1 = input('请输入'+name1+'的年龄：')
age2 = input('请输入'+name2+'的年龄：')

#songName='宋可'
#chenName='陈芍君'
#songAge=21
#chenAge=25
ageDiv=int(age1)-int(age2)

if ageDiv>0:
    print(name1+'比'+name2+'大：'+str(ageDiv)+'岁')
elif ageDiv==0:
    print(name1+'和'+name2+'一样大')
else:
    print(name1+'比'+name2+'小：'+str(abs(ageDiv))+'岁')



 
