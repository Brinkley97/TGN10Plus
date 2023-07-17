# TGN10+

[![DOI](https://zenodo.org/badge/587812631.svg)](https://zenodo.org/badge/latestdoi/587812631)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Brinkley97/TGN10Plus/HEAD)

## Description of files

- generateSpecificQuestions.ipynb -- The purpose of this file is to take our Question Templates and generate Specific Questions based on the ontology mappings.

- reproduceTable1.ipynb -- The purpose of this file is to take the generated Specific Questions and run analysis on the subpopulated data based on **Table 1** in the original paper. Original works states that **Table 1** represents demographic information and behavioral variables for both day and night shift nurses. STAI: state trait anxiety; PANAS: positive and negative affect schedule; SWLS: life satisfaction; BFI-2: big five inventory-2; PSQI: Pittsburgh Sleep Quality Index. Statistical significance denoted by: p∗∗ < 0.01 , p∗ < 0.05.

- reproduceTable2.ipynb -- The purpose of this file is to take the generated Specific Questions and run analysis on the subpopulated data based on **Table 2** in the original paper. Original works states that **Table 2** represents physical activity patterns (in estimated marginal means) between day shift nurses and night shift nurses. Statistical significance of factor shift in the three-way ANOVA test denoted by: p∗∗ < 0.01 , p∗ < 0.05.

- reproduceTable4.ipynb -- The purpose of this file is to take the generated Specific Questions and run analysis on the subpopulated data based on **Table 4** in the original paper. Original works states that **Table 4** shows the sleep pattern (in estimated marginal means) comparisons between day shift nurses and night shift nurses. Statistical significance was denoted as p∗∗ < 0.01 , p∗ < 0.05.

- reproduceFigure2.ipynb -- The purpose of this file is to take the generated Specific Questions and run analysis on the subpopulated data based on **Figure 2** in the original paper. Original works states that **Figure 2** is a comparison of the physical activity from different time periods in a day. The x-axis presents the time in a day. The decision to use these time intervals is described in the method section. Asterisks indicate statistical differences at each time period with p∗∗ < 0.01 , p∗ < 0.05.

- reproduceFigure3.ipynb -- The purpose of this file is to take the generated Specific Questions and run analysis on the subpopulated data based on **Figure 3** in the original paper. Original works states that **Figure 3** exhibits the distribution of median sleep onset time and median wake-up between day shift nurses (top) and night shift nurses (bottom) at workdays and free days. x axis presents the time in a day.

## How to use software and Requirements

- To use this software, you can clone/fork the repository. Once you do this, ensure that you have installed the following coding languages, libraries and packages. We also include the version we're using but have not tested our code on updated versions. To find a specific analysis, navigate to that file and run all cells.
  - `rpy2` (3.5.4) to integrate python and R
  - `python` (3.9.13)
    - `pandas` (1.0.5)
    - `numpy` (1.23.2)
    - `scipy` (1.10.0)
    - `statsmodels` (0.13.5)
    - `pingouin` (0.5.3)
    - `matplotlib-base` (3.6.3)
    - `matplotlib-inline` (0.1.6)
    -
  - `R` (4.2.1)
    - `lmer` (1.1.30)
    - `emmeans` (1.8.0)
    - `aov` (3.6.2)
  - **generateSpecificQuestions.ipynb:** `python`
  - **reproduceTable1.ipynb:** `python`, `pandas`, `numpy`, `pingouin`, `scipy`
  - **reproduceTable2.ipynb:** `python`, `pandas`, `numpy`, `rpy2`, `R`, `aov`
  - **reproduceTable4.ipynb:** `python`, `pandas`, `numpy`, `rpy2`, `R`, `aov`
  - **reproduceFigure1.ipynb:** `python`, `pandas`, `numpy`, `rpy2`, `R`, `lmer`, `emmeans`
  - **reproduceFigure2.ipynb:** `python`, `pandas`, `numpy`, `scipy`, `matplotlib`
  - **reproduceFigure3.ipynb:** `python`, `pandas`, `numpy`

## How does the software works

- The software takes our created Question Templates and generate Specific Questions based on the ontology mappings. We then take the generated Specific Questions to run analysis based on the required data.

## How to run the software?

1. Open a terminal on your computer. Clone the repository is not required.
2. Create the directory to store the results of the analysis.

```bash
mkdir -p results
```

3. Run the docker image.

```bash
docker run \
   -v ${PWD}/results:/home/jovyan/results --entrypoint /bin/bash ghcr.io/mosoriob/tgn10plus:latest -c "
   papermill reproduce_tables/reproduceTable1.ipynb resultant.ipynb \
   -p path_to_demographic_day_file synthetic_data/tiles_datasets/table_1_synthetic_data/day_table_1_synthetic_demographic_data.csv \
   -p path_to_demographic_night_file synthetic_data/tiles_datasets/table_1_synthetic_data/night_table_1_synthetic_demographic_data.csv \
   -p path_to_behaviorial_day_file synthetic_data/tiles_datasets/table_1_synthetic_data/day_table_1_synthetic_behavioral_data.csv \
   -p path_to_behaviorial_night_file synthetic_data/tiles_datasets/table_1_synthetic_data/night_table_1_synthetic_behavioral_data.csv \
   -p output_json results/summary.json \
   -p output_csv results/summary.csv \
   -p specific_questions_notebook generateSpecificQuestions.ipynb
   -p target_variable = ['Gender', 'Age' 'Educ', 'native_lang', 'stai', 'pan_PosAffect', 'pan_NegAffect', 'swls', 'bfi_Neuroticism', 'bfi_Conscientiousness', 'bfi_Extraversion', 'bfi_Agreeableness', 'bfi_Openness', 'psqi']"
```

## References

1. [TILES-2018, a longitudinal physiologic and behavioral data set of hospital workers](https://www.mendeley.com/catalogue/8996e643-6d17-3ece-b50c-805c1f617b1d/?utm_source=desktop&utm_medium=1.19.8&utm_campaign=open_catalog&userDocumentId=%7Ba089ce74-8915-40a2-a6c1-da344c6179c5%7D): Data collection paper
2. [A multimodal analysis of physical activity, sleep, and work shift in nurses with wearable sensor data](https://www.nature.com/articles/s41598-021-87029-w?proof=t%25C2%25A0): Data analysis paper
   - [tiles-day-night repo](https://github.com/usc-sail/tiles-day-night): Data analysis code
3. [“Reproducibility as a Stepping Stone to Intelligent Assistants for Data Analysis: An Analysis of Physical Activity, Sleep, and Work Shift in Nurses](https://www.isi.edu/results/technical-reports/). ”Detravious J. Brinkley, Emmanuel Johnson, Tiantian Feng, and Yolanda Gil. Technical Report ISI-TR-741, Information Sciences Institute, University of Southern California, Marina del Rey, CA, 90202. November 2022.
4. “Reproducibility as a Stepping Stone to Intelligent Assistants for Data Analysis: An Analysis of Physical Activity, Sleep, and Work Shift in Nurses.”Detravious J. Brinkley, Emmanuel Johnson, Tiantian Feng, and Yolanda Gil. March 2023. ACM IUI (Accepted)
   - [Pre-ACM IUI Acceptance](https://zenodo.org/record/7552433#.Y9Fg0-zMIRQ): Our contribution
   - [TGN10Plus old repo](https://github.com/Brinkley97/TGN10/tree/main): Our contribution
