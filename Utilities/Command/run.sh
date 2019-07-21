#!/bin/zsh 
appDir=$1

function runApi() {
    cd ../../Web/Api/GildedRose.Api
    dotnet watch -v run
}

function runWeb() {
    cd ../../Web/GildedRose.Client/GildedRose.App
    yarn run server
}

while :
do
    echo "API"
    echo "Web"
    echo "Exit"
    echo
    vared -p 'Please Type Command: ' -c response

    if [[ $response == "api" ]]; then
        runApi   
    elif [[ $response == "web" ]]; then
        runWeb  
    elif [[ $response == "exit" ]] || [[ $response == "quit" ]]; then
        exit 0
    else
        echo "App $response not found"
    fi
done