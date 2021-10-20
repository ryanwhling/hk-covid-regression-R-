# HK covid regression

hkdata <- read.csv('/Users/ryan/Downloads/Covid_data/enhanced_sur_covid_19_eng.csv')


hkdata$HK.Non.HK.resident <- ifelse(hkdata$HK.Non.HK.resident == "HK resident", 1, 0)
hkdata$Gender <- ifelse(hkdata$Gender == "M", 1, 0)
hkdata$Hospitalised.Discharged.Deceased <- ifelse(hkdata$Hospitalised.Discharged.Deceased == "Deceased", 1, 0)

covid_model <- lm(Hospitalised.Discharged.Deceased~Gender+Age+HK.Non.HK.resident, data = hkdata)