##########################################################################################################################################

#(주의) ->  순차적으로 코드를 실행하는 것을 권함!

#에러 발생 시 github Finance/R-Finance-Programming 경로에 issue를 남기면 확인

##########################################################################################################################################


### 3 차원 그래프.

## rgl 패키지는 대화형으로 작동하는 3차원 그래프를 지원.

.libPaths("C://Users//yjang//R")                                                            # 저장 디렉토리 및 lib 경로 설정.

install.packages("rgl")


library(rgl)

open3d()

data("volcano")
z<-2*volcano                                                                                # Exaggeratetherelief
x<-10*(1:nrow(z))                                                                           # 10meterspacing(StoN)
y<-10*(1:nrow(z))                                                                           # 10meterspacing(EtoW)
zlim<-range(y)
zlen<-zlim[2]-zlim[1]+1
colorut<-terrain.colors(zlen)                                                               # heightcolorlookuptable
col<-colorlut[z-zlim[1]+1]                                                                  # assigncolorstoheightsforeachpoint
open3d()
surface3d(x,y,z, color=col, back="lines")

graphics.off()                                                                              # 그래프를 지워주는 함수.


############################################################결과값(print)#################################################################

# # # 

##########################################################################################################################################