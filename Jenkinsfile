pipeline {
    agent any

    stages {
        stage("Init") {
            steps {
                // Save only what the parent needs
                script {
                    sh '''
                        echo "REPO_URL=https://github.com/flaskorg/flaskapp01.git" > $JENKINS_HOME/workspace/context_env
                        echo "BRANCH=main" >> $JENKINS_HOME/workspace/context_env
                        echo "IMAGE=brightex99/flaskapps01" >> $JENKINS_HOME/workspace/context_env
                    '''
                }
            }
        }

        stage("Trigger Parent Pipeline") {
            steps {
                build job: 'base-pipeline'
            }
        }
    }
}
