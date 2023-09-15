pipeline{
   agent any
   stages{
	stage('clean workspace')
	{
           steps{
              sh ' rm -r *'
	      
	   }
	}

        stage('git scm clone'){
             
	     steps{
                  
		  sh ' git clone https://github.com/pavan731/hello.git -b main '

	     }
 
	}
	stage('docker build'){
              steps{
                sh "docker build -t pavanrr/helloworld /var/lib/jenkins/workspace/hello ." 
	      }
	}
     
	 stage('docker push'){
              steps{
                sh ' docker push pavanrr/helloworld:latest '
	      }
	}

	stage('docker run'){
              steps{
                sh ' docker run -p 80:80 pavanrr/helloworld:latest '
	      }
	}

   }
  
}
