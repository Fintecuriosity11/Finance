##########################################################################################################################################

#(주의) ->  순차적으로 코드를 실행하는 것을 권함!

#에러 발생 시 github Finance/R-Finance-Programming 경로에 issue를 남기면 확인

##########################################################################################################################################



# 금융시장의 가격은 수익률(일종의 비율)로 표현
# 계산하는 방법에 따라 다양한 수익률이 나옴

# 지금 100만원을 투자하면 6개월 뒤에 105만원을 받는다고 가정

# 투자수익률 5 %
# 연간 투자수익률 10 %
# 월복리 수익률 9.7978 %

# 수익률은 다양하게 표현이 가능하지만 금융시장에서는 기본적으로 아래의 기준과 같이 표현

# 1년을 기준으로 수익률을 표시(경우에 따라 상이)
# 복리기준은 문맥상 명확할 경우 생략하고, 그렇지 않을 경우 별도로 명시

# 복리는 단리부터 연속복리까지 다양하게 존재할 수 있지만 주로 사용되는 것은 다음과 같다

# 연속복리 = 무한
# 일복리 = 365(달력일 기준), 252(영업일 기준)
# 월복리 = 12
# 분기복리 = 4
# 연간복리 = 1
# 단리 = 0


##########################################################################################################################################


# 연간 n번 복리해 주는 수익률 y_n을 그 결정요소(만기 t, 복리회수 n, 투자원금 c_0, 만기 회수금 c_t)의 함수로 표현


# c_0 = 1, c_t = 1.05, t = 1일 때, n이 변함에 따라 y가 어떻게 변하는지 확인


##########################################################################################################################################


yn <- function(t, n, c0, ct) n*((ct/c0)^(1/(t*n))-1)*100                    # 수익률 함수 정의.십진숫자(decimal)가 아닌 %로 표시된 값 출력.
n<-1:20
c0<-1;ct<-1.05;t<-1
plot(n,sapply(n, function(x) yn(t,x,c0,ct)),type='l',ylab = 'yield(%)')    # sapply함수를 이용해서 벡터연산 수행


############################################################결과값(print)#################################################################