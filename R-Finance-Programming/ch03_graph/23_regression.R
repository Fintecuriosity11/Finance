##########################################################################################################################################

#(주의) ->  순차적으로 코드를 실행하는 것을 권함!

#에러 발생 시 github Finance/R-Finance-Programming 경로에 issue를 남기면 확인

##########################################################################################################################################


## regression_회귀분석

# 독립변수 x와 종속변수 y에 대한 회귀분석 결과를 원래 데이터와 함께 그리는 방법.

set.seed(1)
err<-rnorm(100)
x<-1:100
y<-x/10+err
m<-lm(y~x)           # lm(y~x)는 y를 x에 관해 선형회귀분석함을 의미함.
plot(y~x)
abline(m,col='red')


############################################################결과값(print)#################################################################

# 그래프 찍어보기.

# > set.seed(1)
# Warning messages:
#   1: In library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
#                   there is no package called ‘biomaRt’
#                 2: In library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
#                                 there is no package called ‘RISmed’
#                               > err<-rnorm(100)
#                               > x<-1:100
#                               > y<-x/10+err
#                               > m<-lm(y~x)           # lm(y~x)는 y를 x에 관해 선형회귀분석함을 의미함.
#                               > plot(y~x)
#                               > abline(m,col='red')

##########################################################################################################################################
