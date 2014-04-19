source("datasets.R")
str(A)
A<-na.omit(A)
R<-cor(A,method="kendal")
R # correlation matrix

corrplot(R)
corrgram(R)
summary(A)

R
svdA<-svd(R) # Single Value Decomposition
U<-svdA$u                # U 
D<-svdA$d                # D         
V<-svdA$v                # V
D
V
U %*% diag(D) %*% t(V) # reconstruction R with UDV' decomposition
R
F<-U%*% sympower(diag(D),1/2) # Gram-factor of F, FF'=R
R
F%*%t(F)

