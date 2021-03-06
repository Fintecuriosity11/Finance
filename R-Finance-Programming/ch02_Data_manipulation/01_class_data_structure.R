##########################################################################################################################################

#(주의) ->  순차적으로 코드를 실행하는 것을 권함!

#에러 발생 시 github Finance/R-Finance-Programming 경로에 issue를 남기면 확인

##########################################################################################################################################

### 데이터 구조

# 간단한 금융데이터를 다룬다고 가정하면 벡터만으로도 충분함
# 조금 더 다양한 데이터 구조로는 배열, 리스트, 데이터 프레임, 팩터 등등이 있음.


x<-1:5
y<-x^2
m<-lm(y~x)
class(m)

# m은 lm의 클래스이다. 
# lm 클래스는 현재 무엇인지 모르는 상태이다.
# 하지만 모든 클래스는 원래 R의 데이터 구조(예를 들면 벡터, 행렬, 리스트 또는 데이터 프레임)를 기반으로 만들어져서 mode함수로 
# 기본적인 구조를 확인할 수 있음.

mode(m)

# mode() 함수를 사용하여 구조확인 실행
# m은 list를 기반으로 만들어진 클래스이다.
# 따라서 list를 사용하는 함수와 연산을 이용하여 m의 내용물을 확인할 수 있다.

############################################################결과값(print)#################################################################


# > x<-1:5
# > y<-x^2
# > m<-lm(y~x)
# > class(m)
# [1] "lm"

# > mode(m)
# [1] "list"

##########################################################################################################################################

names(m)

# 첫번째 리스트 요소는 "coefficient" 라는 것이다.
# 이는 회귀계수를 뜻하며, 실제로 값을 출력하면 회귀계수임을 확인할 수 있다.

m$coefficients

# 이런 식으로 mode() 함수와 class() 함수를 이용하여 해당 변수의 특성을 분석할 수 있다. 

############################################################결과값(print)#################################################################

# > names(m)

# [1] "coefficients"  "residuals"     "effects"       "rank"          "fitted.values" "assign"        "qr"            "df.residual"   "xlevels"       "call"         
# [11] "terms"         "model"   


# > m$coefficients

# (Intercept)           x 
#          -7           6 

##########################################################################################################################################

