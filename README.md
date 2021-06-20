# Mechacar Statistical Analysis

## Project Overview of the Analysis
#### This project was conducted to help the manufacturing team at AutosRUs overcome production troubles with their new prototype, the **MechaCar**.
* The goal of this project was to:
    * perform multiple linear regression analyses to identify 
The Vine Program helps promote customer feedback through reviews of products they are provided by Amazon.  Companies that use Amazon for their distribution pay a fee to Amazon to have their products reviewed.  Amazon provides review information for a wide range of product categories and makes them available through their Amazon Simple Storage Service (Amazon S3).  This analysis was done on a dataset of reviews for the **tool** category.

#### Resources
- Data Source: <p>
`https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Tools_v1_00.tsv.gz`

- Software:  Google Colab, Jupyter Notebook
- Languages: PySpark, Pandas, Python
- Database Resources:  Amazon Web Services (AWS), PostGreSQL, pgAdmin4
  
## Results of the Analysis
* The tools dataset contained over 1.7 million reviews.
* These reviews were given by over 1 million customers for 183,810 unique products.  
  
#### Data Transformations in Google Colab with Spark
1. The dataset was imported into a Google Colab notebook and transformed with Spark DataFrames.
  
![tools_dataset](https://user-images.githubusercontent.com/77071776/122621489-53b67580-d05b-11eb-8314-8decca5cca37.PNG)

2. A customer DataFrame was created which aggregated all their reviews based on their `customer_id` and resulted in 1,053,515 unique customers 
  
![customers_table](https://user-images.githubusercontent.com/77071776/122621533-79dc1580-d05b-11eb-9734-9896dbafb6fa.PNG)

3. A product DataFrame was created with duplicate products dropped.  This resulted in 183,810 products.
  
![products_table](https://user-images.githubusercontent.com/77071776/122622538-a9d8e800-d05e-11eb-9e07-0443a7f8011d.PNG)

4.  A review DataFrame was created with each of the the 1,741,100 reviews.  Additionally, a DatFrame was created that conained the `review_id` and whether the review was part of the **Vine** review program.

![review_id_table](https://user-images.githubusercontent.com/77071776/122622701-28358a00-d05f-11eb-814c-28715db726e7.PNG)

![vine_table](https://user-images.githubusercontent.com/77071776/122623376-70ee4280-d061-11eb-9797-0d6759409f13.PNG)

5.  A connection was then made to the Amazon Web Services Relational Database Service (AWS RDS) and each of the DataFrames was written to a table in using pgAdmin4 and PostGreSQL.
  
#### Calculations in Jupyter Notebook with Pandas
1.  The `vine_table` was exported as a `.csv` file and imported into a Jupyter Notebook using Pandas for the bias calculations.  Upon review of the data in Pandas, there were 5 review_id records that had no rating data, vote data, or purchase data associated.  As a result, the calculations were conducted on the remaining 1,741,095 reviews.

2.  The total number of reviews, the number of 5-star reviews (total, and Vine/non_Vine), and the percentage of 5-star reviews were calculated and formatted into a separate Pandas DataFrame.

![pandas_review_summary](https://user-images.githubusercontent.com/77071776/122624042-1b676500-d064-11eb-8d42-0afb9c62fdcd.PNG)
  
  * The total number of reviews:  **1,741,095**
  * The total number of Vine 5-star reviews:  **4,328**
  * The total number of non_Vine 5-star reviews:  **1,109,235**
  * The percentage of Vine 5-star reviews:  **0.39%**
  * The percentage of non-Vine 5-star reviews:  **99.61%**
    
## Summary
Based on the analysis, it appears that there isn't any positivity bias for reviews in the Vine program.  On the contrary, it seems that people who are offered free products based on their participation in the program might feel the responsibility to offer a higher level of scritiny and detail in their evaluation of the item.  The results of this analysis clearly show that products offered through the Vine program are very unlikely to get a full 5-star review.  In order to dive deeper into the distribution of star ratings in the Vine program, it would be helpful to analyze the same calculations for each of the star ratings in the program.
