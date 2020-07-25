##########################################################################################################################################

#(주의) ->  순차적으로 코드를 실행하는 것을 권함!

#에러 발생 시 github Finance/R-Finance-Programming 경로에 issue를 남기면 확인

##########################################################################################################################################

### 시뮬레이션

# 시뮬레이션은 다양한 분야에 사용될 수 있는데, 간단한 사례로 다음 적분값을 시뮬레이션을 이용해 구할 수 있음.

n<-1000
f<-function(x) x^2
x<-runif(n,0,2)
y<-runif(n,0,4)
xin<-x[y<f(x)]
yin<-y[y<f(x)]
plot(xin, yin, xlim=c(0, 2.5), ylim=c(0,2.5^2))

curve(x^2, 0, 2.5, add=T)
abline(h=0, col='red')
abline(h=4, col='red')
abline(v=0, col='blue')
abline(v=2, col='blue')

# 시뮬레이션 이용 적분 코드

set.seed(123)
f<-function(x) x^2
a<-0
b<-2
c<-0
d<-4
n<-10^5
x<-runif(n,a,b)
y<-runif(n,c,d)
a*sum(y<f(x))/n
integrate(f,a,b)


########################################################결과값(print)#####################################################################

# # > n<-1000
# > f<-function(x) x^2
# > x<-runif(n,0,2)
# > y<-runif(n,0,4)
# > xin<-x[y<f(x)]
# > yin<-y[y<f(x)]
# > plot(xin, yin, xlim=c(0, 2.5), ylim=c(0,2.5^2))
# > 
#   > curve(x^2, 0, 2.5, add=T)
# > abline(h=0, col='red')
# > abline(h=4, col='red')
# > abline(v=0, col='blue')
# > abline(v=2, col='blue')
# > set.seed(123)
# > f<-function(x) x^2
# > a<-0
# > b<-2
# > c<-0
# > d<-4
# > n<-10^5
# > x<-runif(n,a,b)
# > y<-runif(n,c,d)
# > A*sum(y<f(x))/n
# Error: object 'A' not found
# > integrate(f,a,b)
# 2.666667 with absolute error < 3e-14
# > set.seed(123)
# > f<-function(x) x^2
# > a<-0
# > b<-2
# > c<-0
# > d<-4
# > n<-10^5
# > x<-runif(n,a,b)
# > y<-runif(n,c,d)
# > a*sum(y<f(x))/n
# [1] 0
# > integrate(f,a,b)
# 2.666667 with absolute error < 3e-14

##########################################################################################################################################