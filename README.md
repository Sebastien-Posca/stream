# stream

## Build 

`docker build -t "stream" .`

## Run 

`docker run -p 3030:3030 -v /dev/video0:/dev/video0 --privileged=true stream`

