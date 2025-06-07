pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/YOUR_USERNAME/YOUR_REPO.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip3 install -r requirements.txt || echo "No requirements.txt found"'
            }
        }

        stage('Run Python Script') {
            steps {
                sh 'python3 app.py'
            }
        }
    }
}
