# SAMPLE LAMBDA PROJECT DEPLOYED IN AWS

Lambda functions were deployed to AWS using Terraform as Infrastructure as Code tool (IaC)

1. Three Lambda functions were deployed to AWS
2. Two lambda layers were also deployed for the lambda functions (Pandas and Utils)
3. Lambda Role was created and a Cloudwatch log policy was added to the role.
4. The code was committed to a remote feature branch called 'development' which will be merged to the master branch after all the necessary tests have been carried out on the development branch. 

Due to time constraint,  the terragrunt part of the project was not completed and I would also have created a re-usable Terraform module to deploy all the lambda functions.


