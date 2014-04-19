Scree.Plot(R,main="Scree of ds2002")
FA.Stats(R,n.factors=1:2,n.obs=nrow(A), RMSEA.cutoff=.05)

# rotation   [1]      [2]       [3]       [4]       [5]       [6]        [7]       [8]
rotation<-c("none","varimax","quatimax","promax","oblimin","simplimax","cluster","quartimin")
rot<-rotation[1]
(fit.1<-principal(R,nfactors=1,n.obs=nrow(A),rotate="none"))

(fit.2<-principal(R,nfactors=2,n.obs=nrow(A),rotate="none"))
(fit.2.varimax<-principal(R,nfactors=2,n.obs=nrow(A),rotate="varimax"))
(fit.2.promax<-principal(R,nfactors=2,n.obs=nrow(A),rotate="promax"))
(fit.2.quatimax<-principal(R,nfactors=2,n.obs=nrow(A),rotate="quatimax"))
(fit.2.oblimin<-principal(R,nfactors=2,n.obs=nrow(A),rotate="oblimin"))
(fit.2.simplimax<-principal(R,nfactors=2,n.obs=nrow(A),rotate="simplimax"))
(fit.2.cluster<-principal(R,nfactors=2,n.obs=nrow(A),rotate="cluster"))

(fit.3<-principal(R,nfactors=3,n.obs=nrow(A),rotate="none"))
(fit.3.varimax<-principal(R,nfactors=3,n.obs=nrow(A),rotate="varimax"))
(fit.3.promax<-principal(R,nfactors=3,n.obs=nrow(A),rotate="promax"))
(fit.3.quatimax<-principal(R,nfactors=3,n.obs=nrow(A),rotate="quatimax"))
(fit.3.oblimin<-principal(R,nfactors=3,n.obs=nrow(A),rotate="oblimin"))
(fit.3.simplimax<-principal(R,nfactors=3,n.obs=nrow(A),rotate="simplimax"))
(fit.3.cluster<-principal(R,nfactors=3,n.obs=nrow(A),rotate="cluster"))



print(fit.2.promax)