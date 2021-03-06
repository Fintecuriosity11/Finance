##########################################################################################################################################

#(주의) ->  순차적으로 코드를 실행하는 것을 권함!

#에러 발생 시 github Finance/R-Finance-Programming 경로에 issue를 남기면 확인

##########################################################################################################################################

### 데이터 프레임

# 외부파일로부터 R에 데이터를 불러올 때 사용하는 함수들은 불러들인 데이터를 모두 데이터프레임으로 변환.
# 데이터 프레임은 데이터베이스라고 이해하면 됨.
# 필드와 레코드로 이루어져 있음.
# 데이터 프레임에서는 각 행의 개수가 모든 열에서 동일해야 함.


##########################################################################################################################################


### 데이터 프레임(리스트)

## 데이터프레임은 리스트의 한 종류로 

# (1) 리스트에 포함된 모든 값이 길이가 같은 벡터일 때
# (2) 행의 수, 열의 수가 같은 행렬일 경우 data.frame() 함수를 이용해 데이터프레임으로 변환시킬 수 있음.

v1<-1:5
v2<-6:10

v1

v2

mylist<-list(dataA=v1,dataB=v2)
mylist

data.frame(mylist)

 
############################################################결과값(print)#################################################################

# > v1<-1:5
# > v2<-6:10

# > 

# > v1
# [1] 1 2 3 4 5

# > 

#  > v2
# [1]  6  7  8  9 10

# > 

# > mylist<-list(dataA=v1,dataB=v2)
# > mylist

# $dataA
# [1] 1 2 3 4 5

# $dataB
# [1]  6  7  8  9 10

# > 

#  > data.frame(mylist)
# dataA dataB
# 1     1     6
# 2     2     7
# 3     3     8
# 4     4     9
# 5     5    10

##########################################################################################################################################

df<-data.frame(mylist)

rownames(df)

colnames(df)

colnames(df)<-c("kor", "math")

df

# 데이터프레임은 행렬의 집합으로써 작성할 수도 있지만, 많은 경우 벡터의 집합으로 사용

# 같은 길이의 벡터의 집합인 데이터프레임은 각각의 벡터를 열 원소로 간주하는 표 형식의 데이터로 생각할 수 있어서
# 행 단위, 열 단위의 데이터의 투입, 삭제, 추출조작을 할 수 있음.

# 또한, 데이터프레임을 작성할 때 각 열과 행에는 행의 이름과 열의 이름이 자동으로 부여.
# 열의 이름은 리스트의 참조용 이름이 사용되며 행의 이름은 함수 rownames(), 열의 이름은 colnames()로 확인할 수 있고 자유롭게 변경가능.

############################################################결과값(print)#################################################################

# > df<-data.frame(mylist)

# > 

# > rownames(df)
# [1] "1" "2" "3" "4" "5"

# > 

# > colnames(df)
# [1] "dataA" "dataB"

# > 
# > colnames(df)<-c("kor", "math")

# > 

#  > df
#kor math
# 1   1    6
# 2   2    7
# 3   3    8
# 4   4    9
# 5   5   10

##########################################################################################################################################

MFVdata<-NULL
MFVdata<-data.frame(as.numeric(), as.numeric(), as.Date(character()))  # 3개의 필드를 갖는 빈 데이터프레임 생성.

x<-100
y<-200
z<-as.Date("2001-01-01")
MFVdata<-rbind(MFVdata, data.frame(x,y,z))

# 빈 데이터 프레임을 생성할 때는 NULL을 할당하면 되고, 데이터(레코드)를 추가할 때는 rbind 함수를 이용.

############################################################결과값(print)#################################################################

# > MFVdata<-NULL
# > MFVdata<-data.frame(as.numeric(), as.numeric(), as.Date(character()))  

# > 
  
# > x<-100
# > y<-200
# > z<-as.Date("2001-01-01")
# > MFVdata<-rbind(MFVdata, data.frame(x,y,z))

##########################################################################################################################################

x<-matrix(1:6, nrow = 2)        # 행렬을 생성.
df<-as.data.frame(x)            # as.data.frame()함수를 이용해서 데이터프레임으로 변환.
x

tmp<-edit(df)                   # 데이터 편집기. 아래와 같은 데이터 편집기에 원하는 값을 투입하고 우측상단에 [x] 단추를 누르면 새로운
                                # 데이터가 tmp에 입력.
                                # edit()함수를 이용하면 데이터 편집기를 사용.



############################################################결과값(print)#################################################################

# x에 직접 수정을 하려면 fix()함수를 사용하면 됨.
# 즉 edit()함수는 입력 데이터 프레임(인수)를 직접 손대지 않는 반면 fix()함수는 입력인수 직접 수정.

# 데이터 프레임에서는 subset()함수를 이용해서 조건을 만족하는 데이터를 추출.

##########################################################################################################################################

df<-data.frame(NULL)
df<-rbind(df, c(1,2,3))
df<-rbind(df, c(2,3,3))
df<-rbind(df, c(4,2,1))

colnames(df)<-c("kor", "math", "eng")

tmp01<-subset(df,math==2)

print(tmp01)

# 데이터 프레임에서는 subset()함수를 이용해서 조건을 만족하는 데이터를 추출할 수 있음.
# 다음과 같은 데이터가 있다고 가정. 수학(math)이 2(등급)인 데이터(math==2)만 추출하는 것이 목적.

############################################################결과값(print)#################################################################

# > df<-data.frame(NULL)
# > df<-rbind(df, c(1,2,3))
# > df<-rbind(df, c(2,3,3))
# > df<-rbind(df, c(4,2,1))
# > colnames(df)<-c("kor", "math", "eng")
# > tmp01<-subset(df,math==2)

# > print(tmp01)
# kor math eng
# 1   1    2   3
# 3   4    2   1

##########################################################################################################################################