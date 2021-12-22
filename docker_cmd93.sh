img="nvcr.io/nvidia/tensorflow:17.10" 


docker run --gpus all  --privileged=true   --workdir /git --name "ser"  -e DISPLAY --ipc=host -d --rm  -p 6602:4452  \
-v /raid/git/speech-emotion-recognition:/git/speech-emotion-recognition \
-v /raid/git/datasets:/git/datasets \
 $img sleep infinity

docker exec -it ser /bin/bash
cd speech-emotion-recognition

pip list | grep "tensorflow"


#docker stop ser