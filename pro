pipeline {
  agent any
  stages {
    stage('Hello') {
      steps {
        echo 'Hello World'
      }
    }
  }
  post {
  always {
    emailext(
      to: 'prazdemoacc27@gmail.com',
      subject: '$DEFAULT_SUBJECT',
      body: '$DEFAULT_CONTENT',
      attachLog: true,
      mimeType: 'text/html'
    )
  }
}
}
