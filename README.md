# TGN10+
[![DOI](https://zenodo.org/badge/587812631.svg)](https://zenodo.org/badge/latestdoi/587812631)
 
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
   - `python` (3.7.5)
      - `pandas` (1.0.5)
      - `scipy` (1.1.0)
      - `statsmodels` ()
      - `pingouin` ()
   - `R` ()
      - `anova` ()
      - `ols` ()
      - `lmer` ()
      - `emmeans` ()
      - `PostHocTest` ()
      - `ezANOVA` ()
  
## How does the software works
- The software takes our created Question Templates and generate Specific Questions based on the ontology mappings. We then take the generated Specific Questions to run analysis based on the required data. 

## References
1. [TILES-2018, a longitudinal physiologic and behavioral data set of hospital workers](https://www.mendeley.com/catalogue/8996e643-6d17-3ece-b50c-805c1f617b1d/?utm_source=desktop&utm_medium=1.19.8&utm_campaign=open_catalog&userDocumentId=%7Ba089ce74-8915-40a2-a6c1-da344c6179c5%7D): Data collection paper
2. [A multimodal analysis of physical activity, sleep, and work shift in nurses with wearable sensor data](https://www.nature.com/articles/s41598-021-87029-w?proof=t%25C2%25A0): Data analysis paper
   - [tiles-day-night repo](https://github.com/usc-sail/tiles-day-night): Data analysis code
3. [“Reproducibility  as  a  Stepping  Stone  to  Intelligent  Assistants  for  Data Analysis: An Analysis of Physical Activity, Sleep, and Work Shift in Nurses](https://www.isi.edu/results/technical-reports/). ”Detravious J. Brinkley, Emmanuel Johnson, Tiantian Feng, and Yolanda Gil. Technical Report ISI-TR-741, Information Sciences Institute, University of Southern California, Marina del Rey, CA, 90202. November 2022.
4. “Reproducibility  as  a  Stepping  Stone  to  Intelligent  Assistants  for  Data Analysis: An Analysis of Physical Activity, Sleep, and Work Shift in Nurses.”Detravious J. Brinkley, Emmanuel Johnson, Tiantian Feng, and Yolanda Gil. March 2023. ACM IUI (Accepted)
   - [Pre-ACM IUI Acceptance](https://zenodo.org/record/7552433#.Y9Fg0-zMIRQ): Our contribution
   - [TGN10Plus old repo](https://github.com/Brinkley97/TGN10/tree/main): Our contribution
