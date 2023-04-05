# Deploying Website on AWS S3 bucket with Docker and Terraform #

Build docker-compose file.

Run Website and Selenium
Run Unit-tests with docker-compose

### Deploying Website on AWS S3 bucket ###
export environment variables in your system: AWS_ACCESS_KEY, AWS_SECRET_KEY, REGION.
docker-compose run --rm terraform [command]
Run docker-compose terraform container Init, Plan, Apply
get Terraform output
Run AWS container to Copy website files into S3 Bucket.
docker-compose run --rm --entrypoint aws aws s3 cp website/ s3://samplenikolozwebsite.ge // Copy content to AWS S3
docker-compose run --rm --entrypoint aws aws s3 rm s3://samplenikolozwebsite.ge --recursive // Remove content to destroy bucket with Terraform
Run Integration Tests container to run tests against S3 website.
-e WEBSITE_URL=[terraform output]

Dont forget to Terraform Destroy 
