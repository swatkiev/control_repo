# For login to AWS you should create file with credentials to AWS

1. Create new user with Programmatic access and AdministratorAccess permissions (Attach existing policies directly) in IAM service

2. Download .csv file with credentials and save your Access key ID and Secret access key

3. Create file with name "credentials":

[default]

aws_access_key_id = your access key ID

aws_secret_access_key = your secret access key

4. Save file in ".aws" folder
