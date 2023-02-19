posneg=function(){
p=seq(-100,100,length=100)
n=length(p)
for(i in 1:n)
{
if(p[i]>=0)
{
a[i]="positive"
}else{
a[i]="negative"
}
}
}
a

set.seed(123)  # set a random seed for reproducibility

p <- sample(-100:100, 100, replace = TRUE)  # generate 100 values of p between -100 and 100

classif <- rep(NA, length(p))  # create an empty vector to store the classification of the values

for (i in seq_along(p)) {
  if (p[i] < 0) {
    classif[i] <- "negative"
  } else {
    classif[i] <- "positive"
  }
}

print(p)
print(classif)
