# R program to add lines into plots

# Creating coordinate vectors
x <- c(1.3, 3.5, 1.4, -3.1, 5.7,
	2.4, 3.3, 2.5, 2.3, 1.9, 1.8, 2.3)
y <- c(2.5, 5.8, 2.1, -3, 12, 5,
	6.2, 4.8, 4.2, 3.5, 3.7, 5.2)

# Plotting the graph
plot(x, y, cex = 1, pch = 3, xlab ="x",
	ylab ="y", col ="black")

# Creating coordinate vectors
x2 <- c(4.3, 1.2, -2.5, -0.4)
y2 <- c(3.5, 4.6, 2.5, 3.2)

# Plotting a line
lines(x2, y2, col = "red",
	lwd = 2, lty = 1)

#R base functions: plot() and lines()
#The simplified format of plot() and lines() is as follow.
plot(x, y, type = "l", lty = 1)
lines(x, y, type = "l", lty = 1)

#x, y: coordinate vectors of points to join

#type: character indicating the type of plotting. Allowed values are:
#“p” for points
#“l” for lines
#“b” for both points and lines
#“c” for empty points joined by lines
#“o” for overplotted points and lines
#“s” and “S” for stair steps
#“n” does not produce any points or lines

#lty:ine types. Line types can either be specified as an integer 
#(0=blank, 1=solid (default), 2=dashed, 3=dotted, 4=dotdash, 5=longdash, 6=twodash)
# or as one of the character strings “blank”, “solid”, “dashed”, “dotted”, “dotdash”, “longdash”, or “twodash”, where “blank” uses ‘invisible lines’ (i.e., does not draw them).

#LiNePlOt=function(x,y){
+ if (x >= -3 & x <= 3)
+ {
+ y = x^3 - 3*x + 2
+ }
+ a=plot(x,y,type='l',lty=1)
+ b=lines(x,y,type='l',lty=1)
+ return(a)}
> LiNePlOt(1)
NULL
> LiNePlOt(x)
Error in if (x >= -3 & x <= 3) { : the condition has length > 1
