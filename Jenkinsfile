pipeline{
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }
    stages{
        stage ('terraform init and apply - dev'){
            steps{
                bat "bat returnStatus: true, script: 'terraform workspace new dev'"
                bat "terraform init"
                bat "terraform apply -var-file=dev.tfvars"
            }
        }

    }
}
def getTerraformPath(){
    def tfHome = tool name: 'terraform', type: 'terraform'
    return tfHome
}
