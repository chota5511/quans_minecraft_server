echo "Stoping container mc_test"
docker stop mc_test
echo "Removing container mc_test"
docker rm mc_test
echo "Removing image paper_mc"
docker image rm paper_mc