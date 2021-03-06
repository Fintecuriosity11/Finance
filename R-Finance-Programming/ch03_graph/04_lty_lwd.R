##########################################################################################################################################

#(주의) ->  순차적으로 코드를 실행하는 것을 권함!

#에러 발생 시 github Finance/R-Finance-Programming 경로에 issue를 남기면 확인

##########################################################################################################################################



### plot (그래프)

## 고수준 그래프 함수

# 그래프 설정하기.

# 고수준의 그래프 함수는 함수의 인수를 이용해서 축과 문자표시 등에 대한 설정을 할 수 있다.
# 하지만 별도로 제공되는 함수(par 함수 또는 저수준 그래프 함수 등)를 통해서 보다 정밀하게 설정 가능.
# 그래프 함수의 인수를 통해 설정하는 방법 확인.

##########################################################################################################################################

### lty & lwd.

# 선모양은 lty 인수를 통해서, 굵기는 lwd인수를 통해서 설정할 수 있음.

plot(0,0,type='n',xlim=c(0,1),ylim = c(1,6))           # 빈그래프를 만드는 과정.
for(i in 0:6) abline(h=i+1,lty=i,lwd=i)                # 순차적으로 선모양과 굵기를 적용. lty인수가 0이면 선을 그리지 않는다.
                                                       # 따라서 그림에서 y축 값 1에 대해서는 선이 보이지 않는다.

graphics.off()                    # 그래프 지워주는 함수.


############################################################결과값(print)#################################################################

# 그래프 찍어보기.


##########################################################################################################################################
