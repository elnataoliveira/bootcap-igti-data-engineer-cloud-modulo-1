# Comentário para modificar o arquivo .py
from pyspark.sql import SparkSession

spark = (
    SparkSession.builder.appName("ExerciseSpark")
    .getOrCreate()
)

# Ler os dados do censo escolar
censo = (
    spark
    .read
    .format('csv')
    .option("header", True)
    .option("inferSchema", True)
    .option("delimiter", ";")
    .load("s3://mindsetcloud/raw-data/censo/")
)

(
    censo
    .write
    .mode("overwrite")
    .format("parquet")
    .partitionBy("year")
    .save("s3://mindsetcloud/staging/censo/")
)