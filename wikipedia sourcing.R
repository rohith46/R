install.packages("devtools")
install.packages("githubinstall")
install.packages("WikipediaR")
install.packages('tm.plugin.webmining')
install.packages("rJava")
options("java.home"="/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home/lib")

Sys.setenv(LD_LIBRARY_PATH='$JAVA_HOME/server')

dyn.load('/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home/lib/server/libjvm.dylib')

library(rJava)

library(devtools)
library(stringr)
library(githubinstall)
library(WikipediaR)
library(tm.plugin.webmining)


#Get Wikipedia content
wp_content <- page_content("en","wikipedia", page_name = "India_national_cricket_team")


html <- wp_content$parse$text

#Parse HTML
text=extractHTMLStrip(html)
text=str_replace_all(text,"\n", " ")
text=data.frame(text)

