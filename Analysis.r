#Code written by MC Granovetter (March 2021)
#Updated Aug 2022

#load needed packages
library(rstudioapi)
library(ggplot2)
library(ggpubr)

#set working directory
setwd(dirname(getActiveDocumentContext()$path)) 

#load data
theData <- read.csv(file="Tidy.csv")

#models

m1 <- glm(theData$Comp ~ 1)
s1 <- summary(m1)
p1 <- s1$coefficients[,"Pr(>|t|)"]

m2 <- glm(theData$Visuals ~ 1)
s2 <- summary(m2)
p2 <- s2$coefficients[,"Pr(>|t|)"]

m3 <- glm(theData$Writing ~ 1)
s3 <- summary(m3)
p3 <- s3$coefficients[,"Pr(>|t|)"]

m4 <- glm(theData$Pres ~ 1)
s4 <- summary(m4)
p4 <- s4$coefficients[,"Pr(>|t|)"]

m5 <- glm(theData$Stats ~ 1)
s5 <- summary(m5)
p5 <- s5$coefficients[,"Pr(>|t|)"]

m6 <- glm(theData$Read ~ 1)
s6 <- summary(m6)
p6 <- s6$coefficients[,"Pr(>|t|)"]

m7 <- glm(theData$Critique ~ 1)
s7 <- summary(m7)
p7 <- s7$coefficients[,"Pr(>|t|)"]

m8 <- glm(theData$Part ~ 1)
s8 <- summary(m8)
p8 <- s8$coefficients[,"Pr(>|t|)"]

m9 <- glm(theData$ConBec ~ 1)
s9 <- summary(m9)
p9 <- s9$coefficients[,"Pr(>|t|)"]

m10 <- glm(theData$Prep ~ 1)
s10 <- summary(m10)
p10 <- s10$coefficients[,"Pr(>|t|)"]

m11 <- glm(theData$ConNav ~ 1)
s11 <- summary(m11)
p11 <- s11$coefficients[,"Pr(>|t|)"]

m12 <- glm(theData$Contact ~ 1)
s12 <- summary(m12)
p12 <- s12$coefficients[,"Pr(>|t|)"]

p <- c(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
p.corr <- p*12

plotX <- factor(theData$Comp,levels=c("-3","-2","-1","0","1","2","3"))
plotX <- na.omit(plotX)
ggplot() +
geom_bar(aes(x=plotX,fill=plotX),alpha=0.4,size=1,colour="black") +
scale_fill_manual(values=c("white","gray","black","black","black")) +
theme_pubr() +
ylab(c("Number of participants")) +
xlab(c("Post-Familiarity - Pre-Familiarity")) +
ggtitle(c("Computational Programming")) +
theme(panel.border=element_rect(colour="black", fill=NA, size=2),
axis.ticks=element_line(size=2, colour="black"),
axis.ticks.length=unit(0.2, "cm")) +
font("xylab", size=15) +
font("xy", size=15) +
font("xy.text", size=15) +
theme(plot.title=element_text(hjust=0.5)) +
theme(axis.text=element_text(face="bold")) +
theme(axis.title=element_text(face="bold")) +
theme(legend.position = "none") +
scale_x_discrete(drop=FALSE)  +
ylim(0,50)

plotX <- factor(theData$Visuals,levels=c("-3","-2","-1","0","1","2","3"))
plotX <- na.omit(plotX)
ggplot() +
geom_bar(aes(x=plotX,fill=plotX),alpha=0.4,size=1,colour="black") +
scale_fill_manual(values=c("white","white","white","gray","black","black")) +
theme_pubr() +
ylab(c("Number of participants")) +
xlab(c("Post-Familiarity - Pre-Familiarity")) +
ggtitle(c("Analyzing Scientific Graphs and Visuals")) +
theme(panel.border=element_rect(colour="black", fill=NA, size=2),
axis.ticks=element_line(size=2, colour="black"),
axis.ticks.length=unit(0.2, "cm")) +
font("xylab", size=15) +
font("xy", size=15) +
font("xy.text", size=15) +
theme(plot.title=element_text(hjust=0.5)) +
theme(axis.text=element_text(face="bold")) +
theme(axis.title=element_text(face="bold")) +
theme(legend.position = "none") +
scale_x_discrete(drop=FALSE) +
ylim(0,50)

plotX <- factor(theData$Writing,levels=c("-3","-2","-1","0","1","2","3"))
plotX <- na.omit(plotX)
ggplot() +
geom_bar(aes(x=plotX,fill=plotX),alpha=0.4,size=1,colour="black") +
scale_fill_manual(values=c("white","white","white","gray","black","black")) +
theme_pubr() +
ylab(c("Number of participants")) +
xlab(c("Post-Familiarity - Pre-Familiarity")) +
ggtitle(c("Scientific Writing")) +
theme(panel.border=element_rect(colour="black", fill=NA, size=2),
axis.ticks=element_line(size=2, colour="black"),
axis.ticks.length=unit(0.2, "cm")) +
font("xylab", size=15) +
font("xy", size=15) +
font("xy.text", size=15) +
theme(plot.title=element_text(hjust=0.5)) +
theme(axis.text=element_text(face="bold")) +
theme(axis.title=element_text(face="bold")) +
theme(legend.position = "none") +
scale_x_discrete(drop=FALSE) +
ylim(0,50)

plotX <- factor(theData$Pres,levels=c("-3","-2","-1","0","1","2","3"))
plotX <- na.omit(plotX)
ggplot() +
geom_bar(aes(x=plotX,fill=plotX),alpha=0.4,size=1,colour="black") +
scale_fill_manual(values=c("white","white","white","gray","black","black","black")) +
theme_pubr() +
ylab(c("Number of participants")) +
xlab(c("Post-Familiarity - Pre-Familiarity")) +
ggtitle(c("Presenting Scientific Data Orally")) +
theme(panel.border=element_rect(colour="black", fill=NA, size=2),
axis.ticks=element_line(size=2, colour="black"),
axis.ticks.length=unit(0.2, "cm")) +
font("xylab", size=15) +
font("xy", size=15) +
font("xy.text", size=15) +
theme(plot.title=element_text(hjust=0.5)) +
theme(axis.text=element_text(face="bold")) +
theme(axis.title=element_text(face="bold")) +
theme(legend.position = "none") +
scale_x_discrete(drop=FALSE) +
ylim(0,50)

plotX <- factor(theData$Stats,levels=c("-3","-2","-1","0","1","2","3"))
plotX <- na.omit(plotX)
ggplot() +
geom_bar(aes(x=plotX,fill=plotX),alpha=0.4,size=1,colour="black") +
scale_fill_manual(values=c("white","white","white","gray","black","black")) +
theme_pubr() +
ylab(c("Number of participants")) +
xlab(c("Post-Familiarity - Pre-Familiarity")) +
ggtitle(c("Data Analaysis and Statistics")) +
theme(panel.border=element_rect(colour="black", fill=NA, size=2),
axis.ticks=element_line(size=2, colour="black"),
axis.ticks.length=unit(0.2, "cm")) +
font("xylab", size=15) +
font("xy", size=15) +
font("xy.text", size=15) +
theme(plot.title=element_text(hjust=0.5)) +
theme(axis.text=element_text(face="bold")) +
theme(axis.title=element_text(face="bold")) +
theme(legend.position = "none") +
scale_x_discrete(drop=FALSE) +
ylim(0,50)

plotX <- factor(theData$Read,levels=c("-3","-2","-1","0","1","2","3"))
plotX <- na.omit(plotX)
ggplot() +
geom_bar(aes(x=plotX,fill=plotX),alpha=0.4,size=1,colour="black") +
scale_fill_manual(values=c("white","white","gray","black","black")) +
theme_pubr() +
ylab(c("Number of participants")) +
xlab(c("Post-Familiarity - Pre-Familiarity")) +
ggtitle(c("Reading and Understanding Scientific Literature")) +
theme(panel.border=element_rect(colour="black", fill=NA, size=2),
axis.ticks=element_line(size=2, colour="black"),
axis.ticks.length=unit(0.2, "cm")) +
font("xylab", size=15) +
font("xy", size=15) +
font("xy.text", size=15) +
theme(plot.title=element_text(hjust=0.5)) +
theme(axis.text=element_text(face="bold")) +
theme(axis.title=element_text(face="bold")) +
theme(legend.position = "none") +
scale_x_discrete(drop=FALSE) +
ylim(0,50)

plotX <- factor(theData$Critique,levels=c("-3","-2","-1","0","1","2","3"))
plotX <- na.omit(plotX)
ggplot() +
geom_bar(aes(x=plotX,fill=plotX),alpha=0.4,size=1,colour="black") +
scale_fill_manual(values=c("white","white","white","gray","black","black","black")) +
theme_pubr() +
ylab(c("Number of participants")) +
xlab(c("Post-Familiarity - Pre-Familiarity")) +
ggtitle(c("Analyzing and Critiquing Scientific Literature")) +
theme(panel.border=element_rect(colour="black", fill=NA, size=2),
axis.ticks=element_line(size=2, colour="black"),
axis.ticks.length=unit(0.2, "cm")) +
font("xylab", size=15) +
font("xy", size=15) +
font("xy.text", size=15) +
theme(plot.title=element_text(hjust=0.5)) +
theme(axis.text=element_text(face="bold")) +
theme(axis.title=element_text(face="bold")) +
theme(legend.position = "none") +
scale_x_discrete(drop=FALSE) +
ylim(0,50)

plotX <- factor(theData$Part,levels=c("-3","-2","-1","0","1","2","3"))
plotX <- na.omit(plotX)
ggplot() +
geom_bar(aes(x=plotX,fill=plotX),alpha=0.4,size=1,colour="black") +
scale_fill_manual(values=c("white","white","gray","black","black","black")) +
theme_pubr() +
ylab(c("Number of participants")) +
xlab(c("Post-Familiarity - Pre-Familiarity")) +
ggtitle(c("Participation in Scientific Dialogue")) +
theme(panel.border=element_rect(colour="black", fill=NA, size=2),
axis.ticks=element_line(size=2, colour="black"),
axis.ticks.length=unit(0.2, "cm")) +
font("xylab", size=15) +
font("xy", size=15) +
font("xy.text", size=15) +
theme(plot.title=element_text(hjust=0.5)) +
theme(axis.text=element_text(face="bold")) +
theme(axis.title=element_text(face="bold")) +
theme(legend.position = "none") +
scale_x_discrete(drop=FALSE) +
ylim(0,50)

plotX <- factor(theData$ConBec,levels=c("-4","-3","-2","-1","0","1","2","3","4"))
plotX <- na.omit(plotX)
ggplot() +
geom_bar(aes(x=plotX,fill=plotX),alpha=0.4,size=1,colour="black") +
scale_fill_manual(values=c("white","gray","black","black","black")) +
theme_pubr() +
ylab(c("Number of participants")) +
xlab(c("Post-Score - Pre-Score")) +
ggtitle(c("Confidence in Becoming a Physician Scientist")) +
theme(panel.border=element_rect(colour="black", fill=NA, size=2),
axis.ticks=element_line(size=2, colour="black"),
axis.ticks.length=unit(0.2, "cm")) +
font("xylab", size=15) +
font("xy", size=15) +
font("xy.text", size=15) +
theme(plot.title=element_text(hjust=0.5)) +
theme(axis.text=element_text(face="bold")) +
theme(axis.title=element_text(face="bold")) +
theme(legend.position = "none") +
scale_x_discrete(drop=FALSE) +
ylim(0,50)

plotX <- factor(theData$Prep,levels=c("-4","-3","-2","-1","0","1","2","3","4"))
plotX <- na.omit(plotX)
ggplot() +
geom_bar(aes(x=plotX,fill=plotX),alpha=0.4,size=1,colour="black") +
scale_fill_manual(values=c("white","gray","black","black","black")) +
theme_pubr() +
ylab(c("Number of participants")) +
xlab(c("Post-Score - Pre-Score")) +
ggtitle(c("Preparedness in Applying to Physician Scientist Training Programs")) +
theme(panel.border=element_rect(colour="black", fill=NA, size=2),
axis.ticks=element_line(size=2, colour="black"),
axis.ticks.length=unit(0.2, "cm")) +
font("xylab", size=15) +
font("xy", size=15) +
font("xy.text", size=15) +
theme(plot.title=element_text(hjust=0.5)) +
theme(axis.text=element_text(face="bold")) +
theme(axis.title=element_text(face="bold")) +
theme(legend.position = "none") +
scale_x_discrete(drop=FALSE) +
ylim(0,50)

plotX <- factor(theData$ConNav,levels=c("-4","-3","-2","-1","0","1","2","3","4"))
plotX <- na.omit(plotX)
ggplot() +
geom_bar(aes(x=plotX,fill=plotX),alpha=0.4,size=1,colour="black") +
scale_fill_manual(values=c("white","gray","black","black","black")) +
theme_pubr() +
ylab(c("Number of participants")) +
xlab(c("Post-Score - Pre-Score")) +
ggtitle(c("Confidence in Navigating Mentoring Relationships")) +
theme(panel.border=element_rect(colour="black", fill=NA, size=2),
axis.ticks=element_line(size=2, colour="black"),
axis.ticks.length=unit(0.2, "cm")) +
font("xylab", size=15) +
font("xy", size=15) +
font("xy.text", size=15) +
theme(plot.title=element_text(hjust=0.5)) +
theme(axis.text=element_text(face="bold")) +
theme(axis.title=element_text(face="bold")) +
theme(legend.position = "none") +
scale_x_discrete(drop=FALSE) +
ylim(0,50)

plotX <- factor(theData$Contact,levels=c("-4","-3","-2","-1","0","1","2","3","4"))
plotX <- na.omit(plotX)
ggplot() +
geom_bar(aes(x=plotX,fill=plotX),alpha=0.4,size=1,colour="black") +
scale_fill_manual(values=c("white","white","gray","black","black","black","black")) +
theme_pubr() +
ylab(c("Number of participants")) +
xlab(c("Post-Score - Pre-Score")) +
ggtitle(c("Contact and Mentoring Support")) +
theme(panel.border=element_rect(colour="black", fill=NA, size=2),
axis.ticks=element_line(size=2, colour="black"),
axis.ticks.length=unit(0.2, "cm")) +
font("xylab", size=15) +
font("xy", size=15) +
font("xy.text", size=15) +
theme(plot.title=element_text(hjust=0.5)) +
theme(axis.text=element_text(face="bold")) +
theme(axis.title=element_text(face="bold")) +
theme(legend.position = "none") +
scale_x_discrete(drop=FALSE) +
ylim(0,50)
