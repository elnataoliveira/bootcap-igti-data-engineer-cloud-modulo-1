 
import boto3

# Criar um cliente para interagir com o AWS S3
s3_client = boto3.client('s3')

files = ['matricula_co.CSV','matricula_nordeste.CSV','matricula_norte.CSV','matricula_sudeste.CSV','matricula_sul.CSV']

try:
    for fl in files:
        s3_client.upload_file("../data/"+fl,
                              "mindsetcloud",
                              "raw-data/"+fl)
except NameError:
    print(NameError)