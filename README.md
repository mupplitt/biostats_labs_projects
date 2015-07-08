# biostats_labs_projects

Introduction: 
A baby is classified as “low birth weight” if at the time of birth, the baby weighs less than 2500 grams (5 pounds, 8 ounces). In the United States, 1 out of every 12 infants are classified as low birth weight. Low birth weight has been a topic of interest for physicians for years because of serious health concerns that are associated with low birth weight babies both during infancy and later in life.

According to the March of Dimes, low birth weight babies are more likely than normal birth weight babies to suffer from respiratory distress syndrome, intraventricular hemorrhage, patent ductus arteriosus, and necrotizing enterocolitis. Later in life, low birth weight is known to be associated with a heightened risk of diabetes, heart disease, high blood pressure, metabolic syndrome, and delayed cognitive development.

There are several known risk factors that increase the change of giving birth to a low birth weight baby. Medical risk factors include preterm labor, infections, problems with placenta, pre-term low maternal weight. Risk factors the mother may contribute include history of chronic medical conditions, heart disease or hypertension, smoking, drug addition, alcohol abused, low maternal pre-term birth weight, age, and insufficient prenatal care.

The purpose of this study was to assess several of these known risk factors associated with low birth weight and determined whether they have a statistically significant effect on infant birth weight. I specifically was interested in whether or pre-term maternal birth weight, race, and smoking habits effect infant birth weight.

My null hypothesis was that neither pre-term maternal weight, race, nor maternal smoking habits during pregnancy have a statistically significant effect on birth weight. The alternative hypothesis was that maternal weight, race, and smoking habits during pregnancy do have a statistically significant effect on birth weight. Each of these factors would be assessed independently from each other.

I then also tested to see if between each of the recorded races there was a significant effect on birth weight.

In all cases, I was using an alpha level of .05 or 95% significance level.

Methods: 
Data was collected from through a clinical study conducted at Baystate Medical Center, Springfield, Massachusetts in 1986.  Information was obtained from 189 randomly selected women before, during, and after pregnancy and the weight of their baby at birth. 

The variables included in this data set were age of mother in years, weight in pounds at last menstrual period before pregnancy, race, smoking habits, history of premature labor, history of hyper tension, presence of uterine irritability, number of physicians visits during the first trimester, and birth weight of baby in grams.

I generated a histogram for my dependent variable of interest, weight of the baby at time of birth, to check for normality of the data. I used a bin width of 500 grams to divide that data into 9 bins that resulted in a normal distribution.

I chose to focus on three variables from the dataset and determine whether each of those variables had a significant effect on birth weight. The variables I chose were maternal weight at last menstrual period, smoking habits, and race. 

Smoking habits were coded as either 1 = smoker during pregnancy or 0 = non-smoker. The data set did not specify what determined whether someone was classified as a smoke vs non-smoker.

Race was categorized and coded into 3 groups as follows:
      1= “white”
     2 = “black” 
     3 = “other, non-white”  
The data set did not specify what qualified someone to classified as belong to a particular race group.

Since I had one continuous variable (maternal weight) and two categorical variables that were randomly selected and came from a normal distribution, I chose to use a multivariate linear regression models in R to asses the significance of each of the variables on birth weight. 

The data I used had the two categorical variables coded numerically. Thus before running the regression model in R, I set both of these variables to be analyzed as factors.

I was interested in the individual effects of each variable rather than their combine effects on birth weight and thus did not test for interactions.

My original linear regression compared the effects of “Race 2” and “Race 3” individually to “Race 1” a but did not compare “Race 2” to “Race 3.”  Thus, after running a linear regression model for the three variables, I used a Tukey Honest Significant Difference (Tukey HSD) test at a 95% confidence level to compare each of the three races to each other to see if there was a significant difference between each of the races effect on birth weight.  

Results
Outputs of the linear regression model in R:

Coefficients:
	Estimate	Std. Error	t value	Pr(>|t|) 
	
(Intercept)	2799.985	248.971	11.246	<2e-16

LWT	3.934	1.704	2.308	0.022107

RACEFACTOR3	-504.648	153.078	-3.297	0.001174

RACEFACTOR3	-396.775	117.799	-3.368	0.000921

SMOKEFACTOR1	-398.29	108.481	-3.672	0.000316


My primary value of interest here is the p-values. In all cases, the calculated p-values were well below my stated alpha level of .05.

To visually compare the differences in birth weight between the women classified as smokers vs non-smokers specifically, I constructed a box plot in R.

Output of the Tukey HSD at a 95% confidence level:

$RACEFACTOR

diff	lwr	upr	p adj

2-1	-384.04728	-743.4465	0.03309

3-1	-299.72466	-558.5104	0.01861

3-2	84.32262	-291.2872	0.8565

The outputs of the Tukey test compare the effects on birth weight of each of the race groups against each other. The first row compares Race 1 (“white”) to Race 2 (“black”), the second row compares Race 1 (“white”) to Race 3 (“other, non-white”), and the third row compares Race 2 (“black”) to Race 3 (“other, non-white.” I again used the p-value outputs to determine whether or not the race of the mother had a significant effect on birth weight.

Conclusions:
The results of the linear regression test resulted in p-value less than 0.05 and thus I was able to reject my null hypothesis to determine that pre-term maternal weight, race, and maternal smoking habits all have a significant effect on birth weight. This is consistent with the current medical knowledge about the risk factors associated with low birth weight.

A key takeaway from the results of this study is the assessment that smoking habits have a significant effect on birth weight.  This information could be used in pre-natal education to inform mothers of the potential detrimental effects smoking can have on infant health and child development.

I was also able to determine that there was a statistically significant difference in birth weight when I compared Race 1 to Race 2 and Race 3 as both p-values were less than my designated alpha value of 0.05. However, when I compared Race 2 to Race 3, I was unable to reject the null hypothesis because the calculated p-value was 0.85.  

It should be noted, that the data set did not give clear details regarding how women were classified into each of the categorical groups. Depending on how someone specifies smokers vs non-smokers and differentiates between races, the results of tests may change.

For future analysis, I would be interested in further dividing the race groups into more specific categories and also using a logistic regression model to test my variables of interest to the dependent variable of birth weight in a binomial comparison where 1 = infants weighing less than 2500 grams (low birth weight) and 0 = infants weighing above or equal to 2500 grams.
