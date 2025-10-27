pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo '🔹 拉取 GitHub 程式碼'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo '🔹 模擬編譯流程（不下載套件）'
                sh 'echo "Building project..."'
            }
        }

        stage('Test') {
            steps {
                echo '🔹 執行模擬測試'
                sh 'chmod +x ./test_hello.sh'
                sh './test_hello.sh'
            }
        }

        stage('Run') {
            steps {
                echo '🔹 執行程式'
                sh 'chmod +x ./hello.py'
                sh 'python3 hello.py'
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline 成功執行完畢！'
        }
        failure {
            echo '❌ Pipeline 失敗，請檢查 Log。'
        }
    }
}
