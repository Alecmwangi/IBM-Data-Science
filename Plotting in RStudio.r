install.packages("ggplot2")
#instaling ggplot2 package for drawing charts
library(ggplot2)
#loading the ggplot2 library into the script
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()
#x axis is the weight and y is the mpg
#specify geom_point for scattered plot otherwise it will not plot anything
install.packages("httpgd")
library(httpgd)
#launch this library to help you view the plots in the browser since
#vs code doesnt show plots directly like r studio
hgd()
library(ggplot2)
ggplot(mtcars,aes(x=mpg,y=wt))+geom_point()

library(httpgd)
hgd()
library(ggplot2)
ggplot(mtcars,aes(x=mpg,y=wt))+geom_point()+ggtitle("Miles per gallon vs weight")+labs(y="weight",x="Miles per Gallon")
httpgd::hgd_browse()
ggplot(mtcars,aes(x=mpg,y=wt))+geom_point()+ggtitle("Miles per gallon vs weight")+labs(y="weight",x="Miles per Gallon")
#labsa for the axis titles and ggtitle for the plot title

library(datasets)
data(iris)
View (iris)

unique(iris$Species)
#to find the unique species present in the data set
#there's only three different species

library(ggplot2)

cars <-c(1,3,6,5,10)
plot(cars,type="o")
#type is for adding line in the graph
title(main="Cars Vs Index")
#adding the title

library(datasets)
#now load the data
data(mtcars)

#to view first 5 rows
head(mtcars,5)

#to get information about the variables
#opens a webpage with the info
?mtcars

#loading ggplot package
library(ggplot2)
#creating scatterplot of displacement(disp) and miles per gallon (mpg)
#opens in an Rstudio graph window
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()

#adding the title to the plot
ggplot(aes(x=disp,y=,mpg,),data=mtcars)+geom_point()+ggtitle("Displacement vs Miles per Gallon")

#to change the name of the x and y axis
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("Displacement vs Miles Per Gallon")+labs(x="Displacement",y="Miles per Gallon")

#creating a boxplot of mpg vs engine (0=V-shaped, 1=straight)
#to do this you have too make vs a string factor
mtcars$vs<-as.factor(mtcars$vs)
ggplot(aes(x=vs,y=mpg),data=mtcars)+geom_boxplot()

#add color to the boxplot
ggplot(aes(x=vs,y=mpg,fill=vs),data=mtcars)+geom_boxplot(alpha=0.3)+theme(legend.position="none")

#create the histogram of wt(weight in pounds)
ggplot(aes(x=wt),data=mtcars)+geom_histogram(binwidth=0.5)


#installing GGally library. It is an extension of ggplot2
install.packages("GGally")

#reload if you hadnt loaded the iris dataset
library(datasets)
data(iris)
View(iris)
#loading the GGALLY library to create a plot
library(GGally)
ggpairs(iris,mapping=ggplot2::aes(colour=Species))
#This gives you a lot of information for a single line of code. 
#First, you can see the data distributions per column and species on the diagonal. 
#Then you see all the pair-wise scatter plots on the tiles left to the diagonal, again segregated by color. 
#It is, for example, obvious that a line can be drawn to separate setosa against versicolor and virginica. 
#In later courses, you will also learn how the overlapping species can be separated. This is called supervised machine learning using non-linear classifiers.
# You can also see the correlation between individual columns in the tiles on the right to the diagonal, which confirms that setose is more different, hence easier to distinguish, than versicolor and virginica. 
#A correlation value close to one signifies high similarity, whereas a value closer to zero signifies less similarity. 
#The remaining plots on the right are called box-plots, 
#and the ones at the bottom are called histograms, 
#but you will learn about this in a more advanced course in this series.