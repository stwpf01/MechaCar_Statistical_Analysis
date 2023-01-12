#Module 16 Challenge
#Part 1
library(dplyr)
mecha_car <-read.csv('MechaCar_mpg.csv', stringsAsFactors=F)
lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length,data=mecha_car)
summary(lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length,data=mecha_car))
# Part 2
suspension <- read.csv('Suspension_Coil.csv', stringsAsFactors = F)
total_summary <- suspension %>% summarize(Mean = mean(PSI), Median =median(PSI), Variance= var(PSI), SD= sd(PSI), .groups = 'keep')
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median =median(PSI), Variance= var(PSI), SD= sd(PSI), .groups = 'keep')
#Part 3

t.test(suspension$PSI, mu=1500)
lot1 <- subset(suspension,Manufacturing_Lot == 'Lot1')
t.test(lot1$PSI, mu=1500)
lot2 <- subset(suspension,Manufacturing_Lot == 'Lot2')
t.test(lot2$PSI, mu=1500)
lot3 <- subset(suspension,Manufacturing_Lot == 'Lot3')
t.test(lot3$PSI, mu=1500)
