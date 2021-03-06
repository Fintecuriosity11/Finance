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

### pch와 cex

# 점 모양과 크기는 pch 인수와 cex 인수로 지정할 수 있음
# 기본값은 pch = 1 이고 색깔은 검정색.

par(mfrow=c(2,5))
x<-1
y<-1
par(mar=c(1,1,1,1))
for(i in 1:10){
  plot(x,y,pch=i,cex=5,bty='n',axes = FALSE)                     # 그래프 박스를 없애고(bty='n'), 축을 없앤다(axes=FALSE).
}



##########################################################################################################################################

graphics.off()                    # 그래프 지워주는 함수.

############################################################결과값(print)#################################################################

# 점과 모양 한번 찍어보기.


##########################################################################################################################################
