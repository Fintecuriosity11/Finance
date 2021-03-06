##########################################################################################################################################

#(주의) ->  순차적으로 코드를 실행하는 것을 권함!

#에러 발생 시 github Finance/R-Finance-Programming 경로에 issue를 남기면 확인

##########################################################################################################################################



### hist(히스토그램)

## 히스토그램을 그리는 함수

##########################################################################################################################################

### hist()

count<-r.norm(200)   # 200개의 정규분포 난수 생성.
hist(count)          # 히스토그램을 그림.

# hist 함수의 break 인수를 이용하여 구간을 지정할 수 있음.
# break 인수는 구간의 개수를 지정하는 하나의 숫자이거나 구간을 지정하는 벡터일 수 있음.

# break 인수가 
# 1) 숫자가 하나면 -> 구간의 개수.
# 2) 벡터이면 -> 구간.

# 구간은 기본값으로 왼쪽이 개구간 오른쪽이 폐구간(left-open/right-closed interval) 설정을 바꾸려면 FALSE 입력.



graphics.off()                    # 그래프 지워주는 함수.
 
############################################################결과값(print)#################################################################

# 그래프 찍어보기.


##########################################################################################################################################
