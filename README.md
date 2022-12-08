# Video_Game_Analysis

## link to slides
https://docs.google.com/presentation/d/1qDnTNEti67IS0wSqFY93NA5V17spGcnxVwBoQ3uTQcg/edit?usp=sharing

## link to dashboard
https://public.tableau.com/app/profile/petera4738/viz/Video_Game_Analysis_16698831659030/Dashboard1

## Overview of project
We as a group decided to look at Video Games sales over a long period of time to determine if game reviews are a significant factor when it comes to the success of a game. We selected this topic because we thought it would be an interesting subject to look into considering that the video game industry is worth over $200 billion dollars. For this analysis we are using two unique datasets. One of the datasets contains the sales numbers for many games dating as far back at 1975 covering the regions of North America, Europe, Japan, outside of the former regions, and a final global total. The second dataset contains the critic score and user score for thousands of video games. We hope to answer the question on if ctitic scores have any impact on sales figures.

We used frequencies, mean, standrad deviation and quartiles for summary statistics. And histogram, bar chart, boxplot and scatter plots for our data  visualization.  Support Vector Machine(SVM) with liner kernel and Support Vector Machine(SVM) with guassian kernel are the Machine Learning techniques used.

## Communication protocols
- For our group project, we elected to create a slack group chat to post updates on progress for the project.
- We also use the slack huddle for small 2-person talks if needed, and we are using google meets for general team meetings.

## Description of the EDA
During the EDA, we found out that there was many repeating video game titles due to the same game being sold on multiple platforms. We also found an outlier with Wii sports as it was bundled in with the original wii which significantly inflated the total sales figure. Lastly we noticed that many small titles didnt have anyone to review those games which resulted in many nan values for reviews.

### Descriptive
#### Summary
In the video games sales data for the period between 2004 to 2008, we had a total of fifteen(15) variables which consist of 6 categorical variable and 8 continous variables with one(1) date variable being the year. There were two hundred and fifty three(2530) publishers, nine hundred and five(925) developers, twelve(12) Genres and eleven(11) platforms.

From the immediate table below, there were a total of five thousand five hundred and thirty(5330) observations with an average overall global sales of 0.485968 million with a standard deviation of 1.380674 million. The global was obatined as a results of the sum of the regioanl sales (NA_Sales, EU_Sales, JP_Sales, Other_Sales,	Global_Sales). 
![Image]()

We observed variations in global sales within the platforms with four(4) platforms having average sales higher than the average overall global sales. We also observerd variations in global sales within the genre with four(4) genre having average sales lower than the average overall global sales.

#### Data Visualization.

- From the figure, we used histogram to display the frequency distribution of the global sales and critic scores. We observed positive skewed distribution of global sales with over two thousand six hundred(2600) of the observations falling below the 0.16 million. Similarly the histogram of critic score being displayed has a fairly symmetric distribution.
![Image]()

- From the box and whiskers plot we observed potential ouliers for the global sales and some few outliers for the critic score.

- The scatter plot matrix also displays the relationship between global sales and critic score and we observed an increase pattern relationship as critic score increases the global sales increases.
![Image]()

- Lastly to quantify the relationship between critic score and global sales we used the Pearson correlation co efficint which was 0.248163.
![Image]()

- The bar cart shows that after 2004 there has not been any significant changes in the global sales.
![Image]()



## Database
The database was created on Postgress which holds both the sales/critic score table and the games id table.
![Image](https://github.com/PeterAlesio/Video_Game_Analysis/blob/main/SQL/ERD_Rev3.png)
![Image](https://github.com/PeterAlesio/Video_Game_Analysis/blob/main/Dashboard/Tables.png)


## Machine Learning

### Purpose: 
Supervised Machine learning (ML) as an explicit computer algorithm are used to solve such predictive problems. The purpose of this analysis is to employ different ML techniques to train and evaluate models to predict Global Sales. The techinques used here were Support Vector Machine(SVM) with linear kernel and Support Vector Machine(SVM) with guassian kernel. The evaluation metric used here were the R-squared and RMSE(Root Mean Squared Error).

The features considered were the Genre, platform and Critic Score. From which the data preprocessing was done using the encoding method on genre and platform. After which all the selected features were transformed on the standard scale.

### Results:


![image](https://user-images.githubusercontent.com/85681665/206475930-fd9883ce-c568-4179-92fe-415505c6df6b.png)

From the above table the evaluation mertics for SVM(Gaussian) was better than SVM(linear). However it does not suggest a good model because of the small predictive power(R-Squared value = 0.095.

To improve the performance of the model a transformation approach was considered and the Global sales was transformed on the natural log scale. 

![image](https://user-images.githubusercontent.com/85681665/206481607-13eb000e-0ddc-415a-ada1-57f70486c5c2.png)




