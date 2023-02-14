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
