# extracting google news results with R

# install.packages(c('plyr', 'quantmod', 'stringr', 'lubridate', 'xts', 'RDSTK'), dep=TRUE)

# install.packages('tm.plugin.webmining')
# require("tm.plugin.webmining")
# dat = WebCorpus(GoogleNewsSource("ferretti shark attacks california"))



install.packages('tm.plugin.webmining')
install.packages('tm')
library(tm)
require("tm.plugin.webmining")
dat = WebCorpus(GoogleNewsSource(query = "ferretti and shark and attacks and california"))

urlAddress = c()
newspaper = c()
titolo = c()
for (i in 1:length(dat)){
	urlAddress[i] = sub(".+cluster=","",meta(dat[[i]])$id)
	newspaper[i] = sub(".+ - ","",meta(dat[[i]])$heading)
	titolo[i] = sub(" - .+","",meta(dat[[i]])$heading)
}

cbind(newspaper, titolo, urlAddress)

# it works but returns only up to 100 articles and many are irrelevant