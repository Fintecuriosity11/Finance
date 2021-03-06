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

### type: 그래프 표시방법.

# type 인수는 그래프의 표시방법을 정하는데 씀.
# 기본 값은 p 인데, 점 그래프를 그려줌.



### type 인수

# p = points
# l = lines
# o = overplotted points and lines
# b,c = points (empty if "c") joined by lines
# s, S = stair steps
# h = histogram-like vertical lines
# n = does not produce any points or lines

##########################################################################################################################################

xp<-1:100/100

yp<-3*xp^2-2*xp+rnorm(100,sd=0.2)

par(mfrow=c(3,2))                                                        # 가로 3, 세로 2개의 그래프를 그린다.

for(i in c("l", "b","o","h")){                                           # type이 각각 l,b,o,h인 그래프를 4개 그린다.
  plot(xp, yp, type=i, main=paste("Plottype:",i))}

plot(xp, yp, type="o", xlab="index", ylab="values", main="Rsimpleplot")  # type이 o이고 xlab, ylab, main인수 등이 설정된 그래프를 그린다.

plot(xp, yp, type="l", axes=FALSE)                                       # type이 l이고, 축이 없는 그래프를 그린다.

axis(1)                                                                  # 6번째 그래프의 아래쪽 축(1), 좌측축(2), 위쪽축(3), 우측축(4) 설정. 

axis(2, at=c(-0.6, 0, 0.6, 1.2), col="blue")

axis(3, at=c(0,0.25, 0.5, 0.75, 1), col="red")

axis(4, col="violet", col.axis="darkviolet", lwd = 2)



graphics.off()                    # 그래프 지워주는 함수.

############################################################결과값(print)#################################################################

# 6개의 그래프 한꺼번 찍어보기.


##########################################################################################################################################
