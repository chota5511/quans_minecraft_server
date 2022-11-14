echo "Building docker image paper_mc"
docker build --tag paper_mc ./
echo "Run docker image paper_mc"
docker run --name mc_test -p 25565:25565 -p 25575:25575 -d paper_mc
docker logs --follow mc_test