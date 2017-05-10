NBA<- read.csv('NBA_train.csv')
str(NBA)
NBA$PTSdiff<-NBA$PTS-NBA$oppPTS
plot(NBA$PTSdiff,NBA$W)

WinReg<-lm(W~NBA$PTSdiff,data=NBA)