# Big-data-engineering-capstone-project

## Run the commands in the following order of steps.
Step 1: Open Mysql server using below code.
	
	mysql -u anabig114234 -pBigdata123

Step 2: show databases;

	use anabig114234;

Step 3: create tables using the following
        
	a. upload create_database.sql to ftp (https://npbdh.cloudloka.com/ftp)
        
	b. run the below command t create tables under
           source create_database.sql

Step 4: Remove the existing data from hdfs incase if you created below tables in the past


        hdfs dfs -rm -r  /user/anabig114234/hive/warehouse/employees
	hdfs dfs -rm -r  /user/anabig114234/hive/warehouse/salaries
	hdfs dfs -rm -r  /user/anabig114234/hive/warehouse/dept_manager
	hdfs dfs -rm -r  /user/anabig114234/hive/warehouse/dept_emp
	hdfs dfs -rm -r  /user/anabig114234/hive/warehouse/titles
	hdfs dfs -rm -r  /user/anabig114234/hive/warehouse/departments

If in case you perform Step 4 then run step 3 b. again


Step 5: To import Mysql tables to HDFS using sqoop, run the below .sh file

        sh sqoop.sh

Step 6: Run the following command to create hive tables
	
	hive -f hive_table.hql > hive_table_output.txt

        The output of the above command will be save in the output.txt 

step 7 : Run the following command to perform exploratory data analysis using hive

        hive -f hive_eda.hql> hive_eda.txt

Step8: Run the following command to perform EDA on hive table using sparksql and to build ML model using SparkML.

		open Spark_EDA_ML_Pipeline.ipynb to run all the spark and ML commands.
	
