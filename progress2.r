#while loop
#1)infinite loop
a=0
while(a>0)
{
print(a)
a=a+1
}

#produces first ten even numbers
a=0
while(a<20)
{
print(a)
a=a+2
}

#decr x by 0.5 as long as its positive
 
x=20
while(x>=0){
print(x)
x=x-0.5
}

#review as at 19/02/2023
file.choose() #returns file location
install.packages("ggplot2")
library(datarium) #loads the package datarium into workspace
search()  #displays available packages in workspace
detach("library:datarium") #removes package from workspace
##datatypes
#1.numeric
#2.integer
#3.character
#4.logical
#5.complex

##dataobjects
#1.vectors
#2.matrices
#3.arrays
#4.lists
#5.dataframes
#6.factors

 c
 [1] 24  2 33  4  5  6  7  8  9 10 11 12 13 14
> dim(c)=c(3,5)
Error in dim(c) = c(3, 5) : 
  dims [product 15] do not match the length of object [14]
> c
 [1] 24  2 33  4  5  6  7  8  9 10 11 12 13 14
> c=1:15
> dim(c)=c(3,5)
> c
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    4    7   10   13
[2,]    2    5    8   11   14
[3,]    3    6    9   12   15
> d=16:30
> d=matrix(d,nrow=5,ncol=5)
Warning message:
In matrix(d, nrow = 5, ncol = 5) :
  data length differs from size of matrix: [15 != 5 x 5]
> d=matrix(d,nrow=5,ncol=3)
Warning message:
In matrix(d, nrow = 5, ncol = 3) :
  data length [25] is not a sub-multiple or multiple of the number of columns [3]
> length(d)
[1] 15
> d=matrix(d,nrow=3,ncol=5)
> d
     [,1] [,2] [,3] [,4] [,5]
[1,]   16   19   22   25   28
[2,]   17   20   23   26   29
[3,]   18   21   24   27   30
> dimnames(d)=list(c('a','b','c'),c('d','e','f','g','h'))
> d
   d  e  f  g  h
a 16 19 22 25 28
b 17 20 23 26 29
c 18 21 24 27 30
> d['a','h']
[1] 28
> d[c('b','c'),c('f','g')]
   f  g
b 23 26
c 24 27
> d['b','f'];d['c','g']
[1] 23
[1] 27

c
  l m n  o  p
i 1 4 7 10 13
j 2 5 8 11 14
k 3 6 9 12 15
> d
   d  e  f  g  h
a 16 19 22 25 28
b 17 20 23 26 29
c 18 21 24 27 30
> c+d
   l  m  n  o  p
i 17 23 29 35 41
j 19 25 31 37 43
k 21 27 33 39 45
> d+c
   d  e  f  g  h
a 17 23 29 35 41
b 19 25 31 37 43
c 21 27 33 39 45

 maths=c(76,59,90,66,83)
> swahili=c(89,90,99,78,71)
> english=c(56,67,87,98,70)
> endterm=data.frame(maths,english,swahili)
> endterm
  maths english swahili
1    76      56      89
2    59      67      90
3    90      87      99
4    66      98      78
5    83      70      71

values=sample(1:5,100,replace=TRUE)
values
a=0
n=length(values)
for(i in 1:n){
if(values[i]==1){
a[i]='BAS'
}else if(values[i]==2){
a[i]='BFE'
}else if(values[i]==3){
a[i]='BST'
}else if(values[i]==4){
a[i]='BBS'
}else{
a[i]='BOR'
}
}
a

#21/02/2023
#different random sample numbers are generated each time the code is run
table(negpos())

negative positive 
      59       41 
table(negpos())

negative positive 
      50       50 

table(negpos())

negative positive 
      51       49 

#pseudo Random number generators
sample(5)

x=c(5,7,9)
sample(x)

sample(x,2)

sample(x, replace=TRUE)

sample(x,2,replace=TRUE)

sample(c(0,1),100,replace=TRUE,prob=c(0.6,0.4))

#GENERATION OF RANDOM VARIATES
#bernoulli
X=rbinom(100,1,0.4)
mean(X)
pbinom(0,1,0.4)
 X=rbinom(100,1,0.4)
> X
  [1] 0 1 0 0 1 1 0 0 1 1 1 1 0 0 0 0 0 0 1 0 1 1 1 0 0 1 0 0 1 0 0 1 1 0 1 1
 [37] 0 1 0 0 0 1 0 0 1 1 0 1 1 0 0 0 0 0 0 0 1 1 1 0 1 0 0 1 1 0 1 0 0 0 0 0
 [73] 1 0 1 0 1 0 1 1 0 0 1 1 0 1 0 0 1 0 1 0 0 0 0 1 1 0 0 0
> X=rbinom(100,1,0.4)
> mean(X)
[1] 0.3
> X=rbinom(100,1,0.4)
> mean(X)
[1] 0.4
> pbinom(0,1,0.4)
[1] 0.6
> pbinom(2,1,0.4)
[1] 1
> qbinom(0,1,0.4)
[1] 0


#binomial
rbinom(100,7,0.78)

table(rbinom(10000,6,0.3))

   0    1    2    3    4    5    6 
1166 3049 3237 1872  560  106   10 
> table(rbinom(10000,6,0.3))

   0    1    2    3    4    5    6 
1214 3033 3207 1834  604  100    8 
> table(rbinom(1000000000000,6,0.3))
Error: cannot allocate vector of size 3725.3 Gb
> table(rbinom(1000000,6,0.3))

     0      1      2      3      4      5      6 
116909 302395 324620 185681  59539  10095    761 
> (choose(6,0)*0.7^6)+(choose(6,1)*0.3*0.7^5)+(choose(6,2)*0.3^2*0.7^4)
[1] 0.74431

hist(rbinom(100,6,0.3))

ppois(4,1)
[1] 0.9963402

#a function that returns cdf of bernoulli
cdf_bernoulli <- function(x, p) {
  if (x < 0) {
    return(0)
  } else if (x >= 1) {
    return(1)
  } else {
    return(1 - (1 - p) ^ x)
  }
}

 

#28/02/2023
#uniform distribution
k=runif(1000,0,1)
k

adf=punif(1000,0,1)
adf

#normal distribution
a<- rnorm(1000,5,2)
a
b<-pnorm(1000,5,2)
b
c<-qnorm(0.987,5,2)
c

#chi-square distribution
d<-rchisq(100,3,ncp=0)
d
e<-pchisq(100,3,ncp=0)
e
f<-qchisq(0.987,3,ncp=0)
f

#student-t distribution
f<-rt(10,1,ncp=0)
f
g<-pt(10,1,ncp=0)
g
h<-qt(0.876,1,ncp=0)
h


#07/03/2023
#solving polynomials in R
polyroot(c(2,-3,1))
polyroot(c(7,0,0,-3,0,1))
polyroot(c(1,-8,4,5,-7,3))

#integration in R
#1
f=function(x){
x
}
integrate(f,2,4)

#2
f=function(x){
exp(x)
}
integrate(f,0,1)

#3
f=function(x){
(2*x^2+x)/5
}
integrate(f,6,10)
#110.9333 with absolute error < 1.2e-12

#4
f=function(x){
sin(x)
}
integrate(f,2,5)
#ans=-0.699809 with absolute error < 2.1e-14

#Monte Carlo integration
mean(runif(100,2,4))*2
#the larger your sample size the more accurate your results 

x=runif(1000,2,4)
m=0
for(i in 1:100)
{
m[i]=mean(x)*2
}
m

#2
m=0
for(i in 1:100){
x=runif(1000,2,4)
m[i]=mean(x)*2
}
mean(m)  # 6.002124

#3
m=0
for(i in 1:1000){
x=runif(10000,6,10)
y=(2*x^2+x)/5
m[i]=mean(y)*(10-6)
}
mean(m)   #ans:110.9302


#4
m=0
for(i in 1:1000){
x=runif(1000,2,5)
y=sin(x)
m[i]=mean(y)*(5-2)
}
mean(m)   #-0.6998391

#differentiation
#f(x)=x^2+3
D(expression(x^2+3),'x')
D(expression(exp(x*y)),"x")
D(expression(exp(x*2)),"x")
D(expression((1+3*x^2)/(3*x-x^2)),"x")  #ans=3 * (2 * x)/(3 * x - x^2) - (1 + 3 * x^2) * (3 - 2 * x)/(3 * 
    x - x^2)^2


#application
D(expression(-x^3+21*x^2-72*x+800),'x')
polyroot(c(-72,42,-3))
D(expression(-3*x^2+42*x-72),"x")  #42-6x

profit=function(x){
v=42-6*x
if(v>0){
Y="Minimum"
}else if(v<0){
Y="Maximum"
}else{
Y="inflection"
}
return(Y)
}
profit(12)
profit(2)


###14/03/2023
##regression analysis in R
#multiple linear regression
x1=c(7,1,11,11)
x2=c(20,8,9,21)
x3=c(16,20,7,11)
Y=c(50,89,70,61)
model=lm(Y~x1+x2+x3)
summary(model)


#example 2
x0=c(1,1,1,1)
x1=c(7,1,11,11)
x2=c(20,8,9,21)
x3=c(16,20,7,11)
Y=c(50,89,70,61)
X=cbind(x0,x1,x2,x3)
dim(Y)=c(4,1)
beta=solve(t(X)%*%(X))%*%t(X)%*%Y

##x3 has an error so after ommiting it
x0=c(1,1,1,1)
x1=c(7,1,11,11)
x2=c(20,8,9,21)
Y=c(50,89,70,61)
X=cbind(x0,x1,x2)
dim(Y)=c(4,1)
beta=solve(t(X)%*%(X))%*%t(X)%*%Y
beta
#x0 100.145309
#x1  -1.076659
#x2  -1.694508

#example 3
model2=lm(sales~youtube+facebook+newspaper)
model2
summary(model2)

#b
x0=1:200 #for beta0
x=cbind(x0,youtube,facebook,newspaper)
x
y=matrix(sales,ncol=1,byrow=TRUE)
y
beta2=solve(t(x)%*%(x))%*%t(x)%*%y
beta2

#c ''alteration''
x0=rep(1,200) #for beta0
x=cbind(x0,youtube,facebook,newspaper)
x
y=matrix(sales,ncol=1,byrow=TRUE)
y
beta3=solve(t(x)%*%(x))%*%t(x)%*%y
beta3
#always generate x0

##diagonistic plots
#linearity check
plot(model2,1)
plot(model,1)

#Normality check
plot(model2,2)
plot(model,2)

#Homoscedaticity
plot(model2,3)

#influencial values
plot(model2,4)
par(nfrow=c(2,2))
plot(model2)
