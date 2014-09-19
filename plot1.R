#Load data into globals NEI and SCC
source(file = 'loaddata.R')

totals <- aggregate(NEI[['Emissions']], by=NEI['year'], sum)
png(filename="plot1.png", width=480, height=480)
  options("scipen" = 20)
  #Rescale to 100,000 tons for the plot
  barplot(totals[[2]]/100000, 
          axes=TRUE, names.arg=totals[['year']], 
          ylab=expression("100,000 tons of PM"[2.5]))
dev.off()
