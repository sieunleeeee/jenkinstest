pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "Maven 3.8.4"
    }

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/sieunleeeee/jenkinstest.git'

                // Run Maven on a Unix agent.
                sh "mvn -Dmaven.test.failure.ignore=true clean package"

            }

            post {
                // If Maven was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
                success {
                    archiveArtifacts 'target/*.war'
                }
            }
        }
        stage('Deploy') {
            steps {
               rsync -avrz --delete /var/jenkins_home/workspace/tset/target/hello-world-maven-0.1.0-shaded.war 15.164.230.227::backup
            }

        }

    }
}
