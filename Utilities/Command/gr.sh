#!/bin/zsh 
appDir=./../../

while :
do
    echo "BUILD"
    echo "RUN"
    echo "Exit"

    vared -p 'Please Type Command: ' -c response

    if [[ $response == "build" ]]; then
        ./build.sh $appDir
    elif [[ $response == "run" ]]; then
        clear
        ./run.sh $appDir
    elif [[ $response == "exit" ]] || [[ $response == "quit" ]]; then
        exit 0                
    else
        echo "App $response not found"
    fi
done