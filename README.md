---
title: "README"
author: "Me"
date: "7/9/2020"
output: html_document
---

# Getting and Cleaning Data Course Peer Assignment

# Review Criteria
1. The submitted data set is tidy.
2. The Github repo contains the required scripts.
3.GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.

# Submission files with descriptions
README.md - this explains the rest of the files and the assignment
CodeBook.md - describes the variables, the data, and any transformations or work performed to clean up the data.
TidyDataSet.txt - this is the resulting data set of the assignment. This txt file contains the average of each variable for each activity and subject.
run_analysis.R - this is the R script that performs the transformations from zip file to final TidyDataSet.txt

# Input
Human Activity Recognition Using Smartphones
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Transformations (R script)
1. Download the data from zip file into working directory and unzip
2. Read the txt files into R using read.table. This is the messy data.
3. Replace the Y datasets with the meaningful activity names from activity_labels
4. Label columns in X datasets with the meaningful names from features.
5. Bind X + Y + Subject info for both Test and Train, then combine Test + Train into one tidy data set
6. Rename columns to remove unnecessary symbols and make the names readable for a user.
7. For the second data set, we were looking only for Mean and STD data, which was selected from dataset1.
8. Using group_by and summarize, create a table that shows the mean for each variable grouped by activity and subject.
9. Write the resulting table as TidyDataSet.txt in working directory.


# Output 
TidyDataSet.txt - contains the average of each variable for each activity and subject.
