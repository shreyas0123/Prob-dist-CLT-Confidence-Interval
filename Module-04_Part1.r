######################### problem1 ######################################
#load the dataset 
library(readr)
car_data <- read.csv("C:\\Users\\DELL\\Downloads\\probability dataset\\Cars.csv")

summary(car_data)

#compute mean
mean <- mean(car_data$MPG)
mean

#compute standard deviation
stde <- sd(car_data$MPG)
stde

################## problem2 #############################################
# 2)load the dataset 
library(readr)
car_data <- read.csv("C:\\Users\\DELL\\Downloads\\probability dataset\\Cars.csv")

#a) density plot
library(ggplot2)
p <- ggplot(car_data,aes(x = MPG)) + geom_density()
p
# MPG of cars follows Normal distribution because it's having bell shaped curve 
#b) 
library(readr)
wc_data <- read.csv("C:\\Users\\DELL\\Downloads\\probability dataset\\wc-at.csv")

#density plot for AT
library(ggplot2)
p <- ggplot(wc_data,aes(x = AT)) + geom_density()
p
#Adipose Tissue (AT) does not follows Normal Distribution because it does not have bell shaped curve

#density plot for waist
library(ggplot2)
p <- ggplot(wc_data,aes(x = Waist)) + geom_density()
p
#Waist Circumference (Waist)s does not follows Normal Distribution because it does not have bell shaped curve

######################### problem9 #################################################
mean_<- 100 
sd_ <- 20
z_value= qnorm((1-0.99)/2)

# Z_vlue = (X- mean) / sd
# X = z_value *  sd + mean

lower_range = (z_value * sd_) + mean_
upper_range = -(z_value * sd_) + mean_

################################### problem10 ###############################################

mean_a = 5
sd_a =   3

mean_b = 7
sd_b      =   4

#A
profit_mean = (mean_a + mean_b)/2

profit_sd= sqrt((sd_a**2)+(sd_b**2)+(mean_a - profit_mean)+(mean_b - profit_mean))


z_val_95 = qnorm((1-0.95)/2)

lower_range_rs = ((z_val_95 * profit_sd) + profit_mean)* 45 * 1000000
upper_range_rs = ( -(z_val_95 * profit_sd) + profit_mean) * 45 * 1000000

#B


z_val_5= qnorm(0.05,profit_mean,profit_sd)

percentile_5 = -(z_val_5 * profit_sd + profit_mean) * 45 * 1000000

#C
dividion_a = pnorm(0,mean_a,sd_a)
dividion_a

dividion_b = pnorm(0,mean_b, sd_b )
dividion_b





