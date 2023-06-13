library(lme4)
library(emmeans)
library(report)
# print(sessionInfo())

sleep_duration_model = function(at_work_df, off_work_df) {
    work_duration_model <- aov(duration ~ shift + age + gender, data = at_work_df)
    off_duration_model <- aov(duration ~ shift + age + gender, data = off_work_df)
    print(report(work_duration_model))
    print(report(off_duration_model))
}

sleep_efficiency_model = function(at_work_df, off_work_df) {
    work_efficiency_model <- aov(efficiency ~ shift + age + gender, data = at_work_df)
    off_efficiency_model <- aov(efficiency ~ shift + age + gender, data = off_work_df)
    print(report(work_efficiency_model))
    print(report(off_efficiency_model))
}

sleep_mid_model = function(all_df) {
    all_mid_model <- aov(mid ~ shift + age + gender, data = all_df)
    print(report(all_mid_model))
}
