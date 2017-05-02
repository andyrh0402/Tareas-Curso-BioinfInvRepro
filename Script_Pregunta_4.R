#Install Vegan package
install.packages("vegan")

# Load libraries
library(vegan)

#Create a table with final results of the test
PMTresults<-c("pmrster", "PMTpvalue", "PMTr")

#Run Partial Mantel Test for each condition
for(i in c("present","ccsm", "miroc", "flat", "1800", "2000", "2300", "2500", "2700", "3000", "3300", "3500", "4000")) {
  
  print(paste("PartialMantelResults for", i))
  
  # Partial Mantel test 
  print("Partial Mantel test")
  y<-mantel.partial(vegdist(get(paste0("B.",i)),method= "bray"), vegdist(B.FstLin, method = "bray"), 
                    vegdist(B.flat, method="euclidean"), method = "pearson", permutations = 999)
  print(y)
  
  # get info for df  
  PMTpvalue<-round(y$signif, 6)
  PMTr<-round(y$statistic, 4)
  
  # put results in df
  pmrster<-paste(i)
  PMTresults<-rbind(PMTresults, c(pmrster, PMTpvalue, PMTr))
  
}

#Complete results table
PMTresults


