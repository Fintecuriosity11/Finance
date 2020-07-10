#두 라이브러리가 없으면 install.package("라이브러리명")으로 설치해주세요
library(dplyr)
library(readr)
#read_csv("파일경로/이름.csv")
universe <- read_csv("universe.csv")
universe <- universe$code

for (i in 1:100) {
  assign(universe[i], read_csv(paste0("minutedata/", universe[i], ".csv")))
  Sys.sleep(0.5)
}

NW <- 0
NL <- 0
ND <- 0
#익절 수익률입력
w <- 0.07
#손절 수익률입력
l <- -0.06

D <- vector()
for (i in 1:100){
  arranged <- arrange(eval(parse(text = universe[i])), desc(X1))
  vol_criterion <- mean(arranged$vol) + 5*sd(arranged$vol)
  index <- which(arranged$vol > vol_criterion)
  trading_day <- unique(arranged[index,]$date)
  N_trading <- length(trading_day)
  result <- rep(0, N_trading)
  d <- vector()
  for (i in 1:N_trading){
    trading_day_data <- filter(arranged, date == trading_day[i])
    buying <- trading_day_data[which(trading_day_data$vol > vol_criterion),][1,]
    buying_timing <- buying[,1]
    buying_price <- buying[,7]
    buying_index <- which(arranged[,1] == as.numeric(buying_timing))
    index <- buying_index
    holding <- 1
    while(holding > 0.5){
      while(nrow(arranged) >= index){
        if (arranged[buying_index,2] == arranged[index, 2]){
          if (arranged$low[index] < buying_price*(1 + w) & buying_price*(1 + w) < arranged$high[index]){
            result[i] <- "W"
            holding <- 0
            }
          if (arranged$low[index] < buying_price*(1 + l) & buying_price*(1 + l) < arranged$high[index]){
            result[i] <- "L"
            holding <- 0
            }
          else index <- index + 1
          }
        else{
          result[i] <- "D"
          holding <- 0 
          d <- c(d, (arranged$close[index]/buying_price) - 1)
        }
        if (holding == 0) {
          break
        }
      }
    }
  }
  NW <- NW + length(which(result == "W"))
  ND <- ND + length(which(result == "D"))
  NL <- NL + length(which(result == "L"))
  D <- c(D, unlist(d))
}
probability <- c(NW, ND, NL)/sum(NW + ND + NL)
pie(probability, labels = c("winP", "drawP", "loseP"))
c(NW, ND, NL)
#무승부 시 산술평균
#슬리피지(0.4%) 적용한 1거래 기대수익률
profit <- c(1 + w - 0.004, 1 + mean(D) - 0.004, 1 + l - 0.004)
sum(profit*pro)



for (i in 1:100){
  arranged <- arrange(eval(parse(text = universe[i])), desc(X1))
  vol_criterion <- mean(arranged$vol) + 5*sd(arranged$vol)
  index <- which(arranged$vol > vol_criterion)
  trading_day <- unique(arranged[index,]$date)
  N_trading <- length(trading_day)
  N <- N_trading + N
  }
