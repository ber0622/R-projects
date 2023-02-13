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
