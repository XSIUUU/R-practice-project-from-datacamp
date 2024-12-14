# R-practice-project-from-datacamp

---

How can you determine which programming languages and technologies are most widely used? Which languages are gaining or losing popularity, helping you decide where to focus your efforts?

One excellent data source is Stack Overflow, a programming question-and-answer site with more than 16 million questions on programming topics. Each Stack Overflow question is tagged with a label identifying its topic or technology. By counting the number of questions related to each technology, you can estimate the popularity of different programming languages.

In this project, you will use data from the Stack Exchange Data Explorer to examine how the relative popularity of R, Python, Java, and JavaScript has changed over time.

You'll work with a dataset containing one observation per tag per year, including the number of questions for that tag and the total number of questions that year.

`stack_overflow_data.csv`
|Column|Description|
|------|-----------|
|`year`|The year the question was asked (2008-2020)|
|`tag`|A word or phrase that describes the topic of the question, such as the programming language|
|`num_questions`|The number of questions with a certain tag in that year|
|`year_total`|The total number of questions asked in that year|



Discover the trends in the popularity of programming languages by answering the following questions:
# Q1
What percentage of questions are tagged with R per year? Save the result in a data frame, r_over_time, containing five columns: year, tag, num_questions, year_total, and percentage (proportion of R questions).
# Q2
What was the percentage of R questions for 2020? Save your answer as a numeric variable, r_percentage, expressed as a decimal.
# Q3
Identify the five programming language tags with the highest total number of questions asked between 2015 and 2020 (inclusive). Save the tag names as a character vector, highest_tags.
