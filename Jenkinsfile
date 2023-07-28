pipeline {
    agent any

    stages {
        stage('Create docker image') {
            steps {
                sh 'docker build -t group-event-postgress .'
            }
        }
        stage('Run docker container') {
            steps {
                sh '''
                    if docker ps --all | grep -q group-event-postgress
                    then
                    	docker stop group-event-postgress
                    	docker container rm group-event-postgress
                    fi

                    docker run --name group-event-postgress -d -p 5432:5432 group-event-postgress
                    '''
            }
        }
    }
}