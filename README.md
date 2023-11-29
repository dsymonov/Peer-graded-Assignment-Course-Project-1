# Getting and Cleaning Data - Course Project

This project showcases the skills acquired in the Getting and Cleaning Data course on Coursera.

 ### The developed algorithm, which is demonstrated in run_analysis, conducts the following:
 
1. Subject If the dataset is not already present in the current working directory, download it from the web.

2. Read and combine both the training and testing datasets into three separate entities: x (measurements), y (activity), and subject.

3. Load the features, activity information, and extract columns labeled 'mean' (-mean) and 'standard' (-std). Additionally, rename columns for clarity (change -mean to Mean, -std to Std, and remove symbols such as -, (, )).

4. Extract data based on the selected columns from step 3 and merge the x, y (activity), and subject data. Substitute the y (activity) column with its corresponding name by referencing the activity labels loaded in step 3.

5. Generate a 'Tidy Dataset' containing the average (mean) of each variable for every subject and activity. The resulting dataset is stored in the file named tidy_dataset.txt.
