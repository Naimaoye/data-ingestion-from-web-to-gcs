source .env

dataset_file="yellow_tripdata_2021-01.parquet"
dataset_url="https://s3.amazonaws.com/nyc-tlc/trip+data/$dataset_file"


curl -sS "$dataset_url" > $path_to_local_file/$dataset_file
gcloud auth activate-service-account --key-file=$path_to_creds
gsutil -m cp $path_to_local_file/$dataset_file gs://$BUCKET/web/

echo "successful"
