pipeline {
    agent {
        docker {
            image "ruby"
        }
       
    }
    stages {
        stage("Build") {
            steps {
                sh "gem install bundler:2.0.2"
                sh "bundle install"
            }
        }
        stage("Testes"){
            steps {
                sh "bundle exec cucumber -p ci"
            }
        }
    }
}