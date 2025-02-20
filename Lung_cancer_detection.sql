CREATE DATABASE Detection

USE Detection
SELECT * FROM lung_cancer_Dataset


SELECT * FROM lung_cancer_Dataset
WHERE Lung_Cancer_Diagnosis = '1'

SELECT Smoker 
FROM lung_cancer_Dataset
WHERE Smoker = '1' AND Smoker='0'
GROUP BY Smoker

SELECT DISTINCT Cancer_Stage
FROM lung_cancer_Dataset

SELECT AVG(Cigarettes_per_Day)
FROM lung_cancer_Dataset
 
SELECT COUNT(Air_Pollution_Exposure)
FROM lung_cancer_Dataset
WHERE Air_Pollution_Exposure = 'High'

SELECT TOP 5 Country
FROM lung_cancer_Dataset
WHERE Lung_Cancer_Diagnosis = '1'

SELECT COUNT(lung_cancer_Diagnosis),Gender
FROM lung_cancer_Dataset
WHERE Lung_Cancer_Diagnosis = '1'
GROUP BY Gender

SELECT *
FROM lung_cancer_Dataset
WHERE Lung_Cancer_Diagnosis= '1' AND Age < 60

---------------------------------------------------------

SELECT (Smoker)
FROM lung_cancer_Dataset
WHERE lung_Cancer_Diagnosis = '1'

SELECT AVG(Survival_Years),Cancer_Stage
FROM lung_cancer_Dataset
GROUP BY Cancer_Stage

SELECT COUNT(Lung_Cancer_Diagnosis),Passive_Smoker
FROM lung_cancer_Dataset
WHERE Lung_Cancer_Diagnosis = '1'
GROUP BY Passive_Smoker

SELECT Country,MAX(Lung_Cancer_Prevalence_Rate)
FROM lung_cancer_Dataset
GROUP BY Country

SELECT Years_of_Smoking,Lung_Cancer_Diagnosis
FROM lung_cancer_Dataset

SELECT COUNT(Mortality_Rate),Early_Detection
FROM lung_cancer_Dataset
GROUP BY Early_Detection

SELECT Lung_Cancer_Prevalence_Rate,Developed_or_Developing
FROM lung_cancer_Dataset
GROUP BY Lung_Cancer_Prevalence_Rate,Developed_or_Developing

SELECT AVG(Age),Country
FROM lung_cancer_Dataset
WHERE Lung_Cancer_Diagnosis ='1'
GROUP BY Country

SELECT 
    Country, 
    Mortality_Rate,
    RANK() OVER (ORDER BY Mortality_Rate DESC) AS Mortality_Rank
FROM 
    lung_cancer_Dataset
ORDER BY 
    Mortality_Rank;


SELECT 
    Treatment_Type, 
    AVG(Survival_Years) AS Average_Survival_Years,
    MIN(Survival_Years) AS Min_Survival_Years,
    MAX(Survival_Years) AS Max_Survival_Years,
    COUNT(*) AS Number_of_Patients
FROM 
    lung_cancer_Dataset
GROUP BY 
    Treatment_Type
ORDER BY 
    Average_Survival_Years DESC;

SELECT 
    Gender, 
    COUNT(*) AS Lung_Cancer_cases,
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM lung_cancer_Dataset)) AS Prevalence_Percentage
FROM 
    lung_cancer_Dataset
WHERE 
    Lung_Cancer_Diagnosis = '1'
GROUP BY 
    Gender
ORDER BY 
    Lung_Cancer_Cases DESC;

SELECT 
    Early_Detection,
    AVG(Survival_Years) AS Average_Survival_Years,
    MIN(Survival_Years) AS Min_Survival_Years,
    MAX(Survival_Years) AS Max_Survival_Years,
    COUNT(*) AS Number_of_Patients
FROM 
    lung_cancer_Dataset
GROUP BY 
    Early_Detection
ORDER BY 
    Early_Detection DESC;

