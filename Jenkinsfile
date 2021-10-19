pipeline{
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }
    stages{
        
        stage ('S3 - Create Bucket'){
            steps{
                script{
                    createS3Bucket('tfstate-tf')
                }
            }
        }
        
        stage ('terraform init and apply - dev'){
            steps{
                bat returnStatus: true, script: 'terraform workspace new dev'
                bat "terraform init"
                bat "terraform apply -var-file=dev.tfvars -auto-approve"
            }
        }
         stage ('terraform init and apply - prod'){
            steps{
                bat returnStatus: true, script: 'terraform workspace new prod'
                bat "terraform init"
                bat "terraform apply -var-file=prod.tfvars -auto-approve"
            }
        }
    }
}
def getTerraformPath(){
    def tfHome = tool name: 'terraform', type: 'terraform'
    return tfHome
}
def createS3Bucket(bucketname){
    bat returnStatus: true, script: 'aws s3 mb ${bucketname} --region=us-east-1'
}
