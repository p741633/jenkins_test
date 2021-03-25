pipeline {
    agent any

    stages {
        stage('deploy website') {
            steps {
                dir("jenkins") {
                    bat "production_deploy.bat"
                }
            }
        }
        stage('iisnode build') {
            steps {
                dir("jenkins") {
                    bat "production_curl.bat"
                }
            }
        }
    }
}
