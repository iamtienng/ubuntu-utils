docker build -t iamtienng/ubuntu-utils . --platform linux/amd64
docker tag iamtienng/ubuntu-utils:latest iamtienng/ubuntu-utils:v0.0.0
docker push iamtienng/ubuntu-utils
docker push iamtienng/ubuntu-utils:v0.0.0