##########################################################################################################################################

#(주의) ->  순차적으로 코드를 실행하는 것을 권함!

#에러 발생 시 github Finance/R-Finance-Programming 경로에 issue를 남기면 확인

##########################################################################################################################################



### 저수준 그래프 함수

##########################################################################################################################################

### abline

# abline 함수를 이용하면 xy 기준축을 그릴 수 있음.
# 기본적으로는 abline(a,b)는 a+bx 직선을 그림.

# abline(h=y)는 수평선, abline(v=x)는 수직선

curve(x^2-0.5, -1.1,bty='n')                   # 원점을 지나는 수직선과 수평선을 그림.
abline(h=0, v=0, col='red')


graphics.off()                    # 그래프 지워주는 함수.


############################################################결과값(print)#################################################################

# 그래프 찍어보기.


##########################################################################################################################################
