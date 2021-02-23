#2uzd
library(tidyr)
billboard
summary(billboard)
colnames(billboard)
sapply(billboard, class)
str(billboard)
#Stulpelio pavadinimai turi papildomos informacijos apie kintamaji

kopija <- billboard
kopija <- pivot_longer(kopija, -c(artist, track, date.entered), names_to = "week_number", values_to = "ranking")

#Galima pašalinti stebinius, kuriuose yra trūkstama reišmė(NA)
kopija <- kopija %>% drop_na()
  
names(sort(table(kopija$track), decreasing = TRUE)[1])
