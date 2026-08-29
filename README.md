This project analyzes student academic performance using SQL and Python. The analysis uses the Student Performance dataset containing information about students' academic results, study habits, attendance-related factors, previous failures, and demographic characteristics.

The main goal of the project is to identify factors associated with students' final grades and classify students into different performance groups to identify students who may require additional academic support.

## Objectives

- Analyze the overall distribution of final grades.
- Compare academic performance across different groups.
- Examine the relationship between study time and final grades.
- Analyze the effect of previous failures on final performance.
- Examine the relationship between absences and final grades.
- Identify the strongest factors associated with final grades.
- Classify students into Passing and At Risk groups.
- Use SQL and Python to perform data analysis and visualization.

## Dataset

The dataset contains **395 students and 33 variables**.

Important variables used in the analysis include:

- `G1` - First period grade
- `G2` - Second period grade
- `G3` - Final grade
- `studytime` - Weekly study time level
- `failures` - Number of previous class failures
- `absences` - Number of school absences
- `school` - School attended
- `sex` - Student gender

## Tools and Technologies

- **Python**
- **Pandas**
- **Matplotlib**
- **SQL**
- **MySQL**
- **Google Colab**

## Analysis Performed

### 1. Data Inspection

The dataset was loaded into Python using Pandas. The structure, data types, number of records, and missing values were checked.

The dataset contains:

- **395 rows**
- **33 columns**
- **0 missing values**

### 2. Final Grade Analysis

The average final grade (`G3`) was:

**10.42 / 20**

The highest final grade was **20**, while the lowest was **0**.

A histogram was created to visualize the distribution of final grades.

### 3. Study Time Analysis

Average final grades were compared across the four study-time levels:

| Study Time | Average Final Grade |
|------------|---------------------|
| 1 | 10.05 |
| 2 | 10.17 |
| 3 | 11.40 |
| 4 | 11.93 |

Students in higher study-time groups generally had higher average final grades. However, the difference was relatively moderate, so study time alone does not explain student performance.

### 4. Previous Failures

Previous failures showed one of the clearest relationships with final performance.

| Previous Failures | Students | Average G3 |
|-------------------|----------|------------|
| 0 | 312 | 11.25 |
| 1 | 50 | 8.12 |
| 2 | 17 | 6.24 |
| 3 | 16 | 5.69 |

Students with no previous failures had an average final grade of **11.25**, while students with three previous failures had an average of only **5.69**.

This indicates that previous academic difficulties are strongly associated with lower final performance.

### 5. Absence Analysis

Students were divided into four absence groups:

- 0-5 absences
- 6-10 absences
- 11-20 absences
- 21+ absences

The average grades were:

| Absence Group | Average G3 |
|---------------|------------|
| 0-5 | 10.17 |
| 6-10 | 11.40 |
| 11-20 | 10.12 |
| 21+ | 10.27 |

The results do not show a clear linear relationship between the number of absences and final grade in this dataset.

### 6. Correlation Analysis

Correlation analysis was performed to identify variables most strongly associated with the final grade.

| Variable | Correlation with G3 |
|----------|---------------------|
| G2 | 0.905 |
| G1 | 0.801 |
| Study Time | 0.098 |
| Absences | 0.034 |
| Failures | -0.360 |

The strongest relationship was between **G2 and G3**, with a correlation of approximately **0.905**.

G1 also showed a strong positive correlation of approximately **0.801**.

Previous failures showed a negative correlation of approximately **-0.360**.

Study time and absences showed very weak correlations with final grade.

### 7. Student Performance Classification

Students were classified into two groups based on their final grade:

- **Passing:** G3 >= 10
- **At Risk:** G3 < 10

The analysis produced:

| Performance Group | Students | Percentage |
|--------------------|----------|------------|
| Passing | 265 | 67.09% |
| At Risk | 130 | 32.91% |

This means approximately one-third of the students in the dataset were classified as **At Risk**.

The average performance of the two groups was also compared to understand the characteristics of students requiring additional attention.

## Key Findings

### Finding 1: Previous academic performance is the strongest indicator

G2 had the strongest correlation with the final grade, at approximately **0.905**. G1 also had a strong correlation of approximately **0.801**.

This suggests that students' earlier academic performance is a much stronger indicator of their final performance than several lifestyle or demographic variables examined in this project.

### Finding 2: Previous failures are associated with lower performance

The average final grade decreased substantially as the number of previous failures increased.

Students with no previous failures averaged **11.25**, compared with **5.69** for students with three previous failures.

### Finding 3: A significant proportion of students are at risk

The analysis classified **130 out of 395 students**, or **32.91%**, as At Risk.

This highlights the importance of identifying struggling students early rather than waiting until the final assessment.

### Finding 4: Study time has a relatively weak relationship with final grades

Although students in higher study-time groups generally had higher average grades, the correlation between study time and G3 was only approximately **0.098**.

Therefore, simply increasing study time does not appear to be enough to explain differences in academic performance.

### Finding 5: Absences did not show a clear linear relationship

The correlation between absences and final grade was approximately **0.034**, indicating a very weak relationship in this dataset.

The grouped analysis also did not show a consistent decrease in grades as absences increased.

## Conclusion

The analysis demonstrates that previous academic performance is the most important factor associated with final student performance among the variables examined.

The strong correlations between G1, G2, and G3 show that students' earlier grades provide a useful indication of their eventual final performance. Previous failures also have a noticeable negative relationship with final grades.

On the other hand, study time and absences showed relatively weak relationships with final performance. This suggests that academic outcomes are influenced by more than simply the amount of time a student studies or the number of classes they miss.

The performance classification also identified **32.91% of students as At Risk**, providing a practical way for an institution to identify students who may benefit from additional academic support.

Overall, the project demonstrates how SQL and Python can be combined to transform a raw student dataset into meaningful analysis, visualizations, and actionable findings.

## Project Structure

```text
student-performance-analysis/
│
├── student-mat.csv
├── student_performance_analysis.ipynb
├── sql script.sql
├── Umer Azhar -MKTM-project.pdf
└── README.md
