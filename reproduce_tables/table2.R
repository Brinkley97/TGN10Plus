rest_model = function(at_work_df, off_work_df) {
    work_rest_model <- aov(rest ~ shift + age + gender, data = at_work_df)
    off_rest_model <- aov(rest ~ shift + age + gender, data = off_work_df)
    print(report(work_rest_model))
    print(report(off_rest_model))
}

step_model = function(at_work_df, off_work_df) {
    work_rest_model <- aov(step_ratio ~ shift + age + gender, data = at_work_df)
    off_rest_model <- aov(step_ratio ~ shift + age + gender, data = off_work_df)
    print(report(work_rest_model))
    print(report(off_rest_model))
}

vigorous_model = function(at_work_df, off_work_df) {
    work_rest_model <- aov(vigorous_min ~ shift + age + gender, data = at_work_df)
    off_rest_model <- aov(vigorous_min ~ shift + age + gender, data = off_work_df)
    print(report(work_rest_model))
    print(report(off_rest_model))
}