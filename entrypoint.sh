#!/bin/bash
cd ./Web/Api/GildedRose.Api/
run_cmd="dotnet run --server.urls http://*:80"
exec $run_cmd