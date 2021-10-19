pipeline{
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }
    stages{
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
