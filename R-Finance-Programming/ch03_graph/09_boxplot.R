##########################################################################################################################################

#(주의) ->  순차적으로 코드를 실행하는 것을 권함!

#에러 발생 시 github Finance/R-Finance-Programming 경로에 issue를 남기면 확인

##########################################################################################################################################



### boxplot 함수.

## 박스플롯을 그리는 함수

##########################################################################################################################################

### boxplot()

par(mfrow=c(2,2))

nmbCol<-5
nmbRow<-100
mat<-matrix(0,nmbRow, nmbCol)
for(i in 1:nmbCol{
  mat[,1]<-t(rnorm(nmbRow))
})
boxplot(mat)
boxplot(mat,range = 0)
  

# Boxplot은 통계학에서 쓰는 "skeletal box and whisker plot"을 의미함.

# 자료이 최소값, 1사분위수(Q1), 2사분위수(Q2), 3사분위수(Q3), 최대값 등을 효과적으로 나타낼 수 있는 방법 중 하나.

# 그림에서 네모난 사각형은 각각 1사분위수와 3사분위수로 구성되는 interquartile 범위를 의미하고, 가운데 굵은 선은 중앙값인 2사분위 수.

# boxtplot함수에서 "range" 인수는 whisker(박스 밖의 꼬리)를 어디까지 표시할 것인지를 나타내는 것으로써, default 값은 1.5.
# 이는 박스로부터 interquartile range의 1.5배를 벗어나지 않는 데이터까지만 whiskers를 표시하도록 함을 의미. 
# 반면에 "range=0"으로 설정하면 최소/최대값까지 whiskers를 표시.

# boxplot 함수의 입력값은 data.frame 혹은 matrix이면 사용 가능.
# 단, matrix는 각 열이 하나의 데이터 시리즈를 의미.


graphics.off()                    # 그래프 지워주는 함수.

############################################################결과값(print)#################################################################

# 그래프 찍어보기.


##########################################################################################################################################
