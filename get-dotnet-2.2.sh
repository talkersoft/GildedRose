#!/bin/zsh
docker run -v ~/dev/gildedrose/Web/Api/GildedRose.Api/ --workdir /app mcr.microsoft.com/dotnet/core/sdk:2.2 dotnet new mvc --auth Individual