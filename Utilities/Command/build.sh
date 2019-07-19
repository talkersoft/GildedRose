#!/bin/zsh
appDir=$1
 
function buildApi() {
    cd ../../Web/Api/GildedRose.Api
    dotnet build -c $1 -v normal
}
 
while :
do
    echo "API"
    echo "Exit"
    echo
    
    vared -p 'Please Type Command: ' -c response

    if [[ $response == "api" ]]; then
        buildApi Debug
    elif [[ $response == "api-release" ]]; then
        buildApi Release
    else
        echo "App $response not found"
    fi
done