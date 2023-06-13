library(lme4)
library(emmeans)
library(report)
# print(sessionInfo())

# ------------------------------------------
# model for anxieity
# ------------------------------------------
anxiety_model = function(df){

    model = lmer(anxiety ~ work + shift + shift : work  + (1 | id), data = df)
    em <- emmeans(model, "work")

    print(summary(model))
    print(summary(em))
    print("-----------------------------------")
    print("-----------------------------------")
    print(report(model))

#     pdf("mgt/anxiety.pdf", width = 10, height = 5)
#     par(xpd=TRUE, mar = c(5, 5, 4, 4))
#     df$work <- factor(df$work, levels=c("work","off"))
#     df$shift <- factor(df$shift, levels=c("day","night"))
#     boxplot(anxiety~shift*work, data=df, notch=TRUE, 
#             col=(c("#31a354","#756bb1")), 
#             xlab="", ylab="", main = "EMA Anxiety",
#             cex.axis=text_size, cex.lab=text_size, font.lab=2, cex.main=text_size,
#             yaxt='n', xaxt='n', frame.plot=FALSE)

#     mtext(side=2, text="Anxiety", line=2.5, font=2, cex=1.55)
#     mtext("Workday",side=1,line=1,at=1.5, cex=text_size, font=2)
#     mtext("Off-day",side=1,line=1,at=3.5, cex=text_size, font=2)

#     axis(2, at=seq(1,5,1), labels=paste(seq(1,5,1), sep=""), las=1, font=2, cex.axis=1.6)
#     legend(4.25, 5.2, c("Day shift", "Night shift"), cex=1.35, fill = c("#31a354","#756bb1"), bty='n')
#     dev.off()
}


# ------------------------------------------
# model for stress
# ------------------------------------------
stress_model = function(df){
# model = lmer(stressd ~ work + shift + shift : work  + (1 | id), data = df)
    model = lmer(stressd ~ work * shift  + (1 | id), data = df)
    em <- emmeans(model, "work")

#     text_size <- 1.75

    print(summary(model))
    print(summary(em))
    print("-----------------------------------")
    print("-----------------------------------")
    print(report(model))
    # sink()

#     pdf("/Users/brinkley97/Documents/development/lab-kcad/tiles-day-night/r_code_result/mgt/stressd.pdf", width = 10, height = 5)
#     par(xpd=TRUE, mar = c(5, 5, 4, 4))
#     df$work <- factor(df$work, levels=c("work","off"))
#     df$shift <- factor(df$shift, levels=c("day","night"))
#     boxplot(stressd~shift*work, data=df, notch=TRUE, 
#             col=(c("#31a354","#756bb1")), 
#             xlab="", ylab="", main = "EMA Stress",
#             cex.axis=text_size, cex.lab=text_size, font.lab=2, cex.main=text_size,
#             yaxt='n', xaxt='n', frame.plot=FALSE)

#     mtext(side=2, text="Stress", line=2.5, font=2, cex=text_size)
#     mtext("Workday",side=1,line=1,at=1.5, cex=text_size, font=2)
#     mtext("Off-day",side=1,line=1,at=3.5, cex=text_size, font=2)

#     axis(2, at=seq(1,5,1), labels=paste(seq(1,5,1), sep=""), las=1, font=2, cex.axis=1.6)
#     legend(4.25, 5.2, c("Day shift", "Night shift"), cex=1.35, fill = c("#31a354","#756bb1"), bty='n')
#     dev.off()
}


# # ------------------------------------------
# # model for pos affect
# # ------------------------------------------
pa_model = function(df){

    model = lmer(pand_PosAffect ~ work*shift  + (1 | id), data = df)
    em <- emmeans(model, "work")

    print(summary(model))
    print(summary(em))
    print("-----------------------------------")
    print("-----------------------------------")
    print(report(model))


#     pdf("mgt/pand_PosAffect.pdf", width = 10, height = 5)
#     par(xpd=TRUE, mar = c(5, 5, 4, 4))
#     df$work <- factor(df$work, levels=c("work","off"))
#     df$shift <- factor(df$shift, levels=c("day","night"))
#     boxplot(pand_PosAffect~shift*work, data=df, notch=TRUE, 
#             col=(c("#31a354","#756bb1")), 
#             xlab="", ylab="", main = "EMA Positive Affect",
#             cex.axis=text_size, cex.lab=text_size, font.lab=2, cex.main=text_size,
#             yaxt='n', xaxt='n', frame.plot=FALSE)

#     mtext(side=2, text="Postive Affect", line=2.5, font=2, cex=text_size)
#     mtext("Workday",side=1,line=1,at=1.5, cex=text_size, font=2)
#     mtext("Off-day",side=1,line=1,at=3.5, cex=text_size, font=2)

#     axis(2, at=seq(5,25,5), labels=paste(seq(5,25,5), sep=""), las=1, font=2, cex.axis=1.6)
#     legend(4.25, 25.2, c("Day shift", "Night shift"), cex=1.35, fill = c("#31a354","#756bb1"), bty='n')
#     dev.off()
}

# # ------------------------------------------
# # model for negative affect
# # ------------------------------------------
na_model = function(df){

    model = lmer(pand_NegAffect ~ work*shift + (1 | id), data = df)
    em <- emmeans(model, pairwise ~ work*shift)
    posthoc <- PostHocTest(aov(pand_NegAffect ~ work*shift, data=df), method = "lsd")
    # posthoc <- PostHocTest(model, method = "lsd")

    print(summary(model))
    print(summary(em))
    print(posthoc)
    print("-----------------------------------")
    print("-----------------------------------")
    print(report(model))

#     pdf("mgt/pand_NegAffect.pdf", width = 10, height = 5)
#     par(xpd=TRUE, mar = c(5, 5, 4, 4))
#     df$work <- factor(df$work, levels=c("work","off"))
#     df$shift <- factor(df$shift, levels=c("day","night"))
#     boxplot(pand_NegAffect~shift*work, data=df, notch=TRUE, 
#             col=(c("#31a354","#756bb1")), 
#             xlab="", ylab="", main = "EMA Negative Affect",
#             cex.axis=text_size, cex.lab=text_size, font.lab=2, cex.main=text_size,
#             yaxt='n', xaxt='n', frame.plot=FALSE)

#     mtext(side=2, text="Negative Affect", line=2.5, font=2, cex=text_size)
#     mtext("Workday",side=1,line=1,at=1.5, cex=text_size, font=2)
#     mtext("Off-day",side=1,line=1,at=3.5, cex=text_size, font=2)

#     axis(2, at=seq(5,25,5), labels=paste(seq(5,25,5), sep=""), las=1, font=2, cex.axis=1.6)
#     legend(4.25, 25.2, c("Day shift", "Night shift"), cex=1.35, fill = c("#31a354","#756bb1"), bty='n')
#     dev.off()
}