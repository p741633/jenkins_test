pipeline {
    agent any

    stages {
        stage('deploy website') {
            dir("jenkins") {
                bat "production_deploy.bat"
            }
        }
        stage('iisnode build') {
            dir("jenkins") {
                bat "production_curl.bat"
            }
        }
    }
}
