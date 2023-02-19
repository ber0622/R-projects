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
#generates 100 random values from 1 to 5 and classifies them
