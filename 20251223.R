library(abe4)
getwd()
data <- read.csv("E:\\R\\R-study\\npcl.csv")
data

x <- c("data", "huang", "liu")
x
y <- c(3.14,2,5)
y

class(data)  #数据类型
str(data)    #数据框变量
glimpse(data)     #数据结构
??glimpse     #搜寻函数所属包

z <- data$P    #数据框取值并赋值给z
names(data)

l <- data[5,2]    #取具体行列值并赋给l
summary(data)

mat <- as.matrix(data)     #矩阵与类型
class(mat)
str(mat)

plot(data)      #数据可视化
plot(x=data$PA, y=data$loss_rate)
abline(lm(data$loss_rate ~ data$PA), col = "red", lwd = 2)       #增加趋势线

#ggplot绘图
ggplot(data, aes(x = PA, y = loss_rate)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE,
              color ="orange", linewidth = 2)
??ggplot

#数据保存读取
write.csv(data, "E:\\R\\R-study\\test1223.csv")
read.csv("E:\\R\\R-study\\test1223.csv")
saveRDS(data, "E:\\R\\R-study\\test1223.rds")
read.RDS("E:\\R\\R-study\\test1223.rds")