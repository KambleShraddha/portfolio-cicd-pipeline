pipeline {
  agent any
  options { timestamps() }
  stages {
    stage('Checkout') { steps { git branch: 'main', url: 'REPLACE_WITH_YOUR_GIT_REMOTE_URL' } }
    stage('Build') { steps { sh 'grep -q "<title>" site/index.html' } }
    stage('Dockerize') { steps { script { IMAGE = "portfolio-site:build-${env.BUILD_NUMBER}" }; sh 'docker build -t "$IMAGE" .' } }
    stage('Test Container') {
      steps {
        sh 'cid=$(docker run -d -p 8080:80 "$IMAGE"); sleep 2; curl -fsS http://localhost:8080 | grep -i "Shraddha"; docker rm -f "$cid"'
      }
    }
    stage('(Optional) Push/Deploy') { steps { sh 'echo Stub: add push to registry and deploy steps here' } }
  }
  post { success { echo "✅ Built $IMAGE" } failure { echo "❌ Pipeline failed" } }
}
