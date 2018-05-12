outputDir=build
binFilename=bloom-v2.ino.bin
ip=${1:-"192.168.0.106"}
url="http://$ip/update"

curl -v --form "file=@$outputDir/$binFilename;filename=$binFilename" $url
