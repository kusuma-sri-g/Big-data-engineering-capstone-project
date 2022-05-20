mkdir for_schema

sqoop import-all-tables --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114234 --username anabig114234 --password Bigdata123 --as-parquetfile --warehouse-dir /user/anabig114234/for_schema --m 1 --driver com.mysql.jdbc.Driver



