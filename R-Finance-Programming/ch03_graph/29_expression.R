##########################################################################################################################################

#(주의) ->  순차적으로 코드를 실행하는 것을 권함!

#에러 발생 시 github Finance/R-Finance-Programming 경로에 issue를 남기면 확인

##########################################################################################################################################


### 그래프에 그리스 문자 입력하기

## express함수를 이용해서 그리스 문자를 입력.

h<-rnorm(mean = 5, sd = 1, n = 1000)
hist(h, main=expression(paste("sampledvalues:",mu,"=5,",sigma,"=1")))

graphics.off()                                                                              # 그래프를 지워주는 함수.


############################################################결과값(print)#################################################################

# # # > h<-rnorm(mean = 5, sd = 1, n = 1000)
# > hist(h, main=expression(paste("sampledvalues:",mu,"=5,",sigma,"=1")))


##########################################################################################################################################
