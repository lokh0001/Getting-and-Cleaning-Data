Getting-and-Cleaning-Data
=========================

Create tidy dataset in txt from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Description of dataset at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

run_analysis.R is script used to create tidy dataset (complete.txt)
1) Extract dataset into working R working directory
2) Run run_analysis.R. The script will:
    - Read all test and training files
    - Combine files into 1 dataframe
    - Read features from features.txt and subset only means or std.
    - Read activity labels from activity_labels.txt, replace labels with label names
    - Create column and feature list
    - Apply list to dataframe
    - Create final dataframe with mean for each combination of subject and label. Write final dataframe into complete.txt

