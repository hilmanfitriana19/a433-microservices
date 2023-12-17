# build docker image
docker build -t hilmanfitriana19/shipping_service:latest .

# listing docker image
docker images

# push to github package
# Perform Docker login to a container registry ('ghcr.io') with the specified username ('deltarfd').
# The password is provided through the standard input using the '--password-stdin' option.
# The password is typically stored as an environment variable ('$CR_PAT').
echo $CR_PAT | docker login -u hilmanfitriana19 --password-stdin ghcr.io
docker tag hilmanfitriana19/shipping_service:latest ghcr.io/hilmanfitriana19/shipping_service:latest
docker push ghcr.io/hilmanfitriana19/shipping_service:latest