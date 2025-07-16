pipeline {
    agent any

    stages {
        stage("Trigger Parent Pipeline") {
            steps {
                build job: 'flaskapps-trigger/base-pipeline',
                parameters: [
                    string(name: 'REPO_URL', value: 'https://github.com/flaskorg/flaskapp01.git'),
                    string(name: 'BRANCH', value: 'main'),
                    string(name: 'IMAGE', value: 'brightex99/flaskapps01')
                ]
            }
        }
    }
}
