#!/bin/zsh
docker run -e "ACCEPT_EULA=Y" \
   -e "SA_PASSWORD=Passw0rd!" \
   -p 1433:1433 --name sql-server \
   -v sqlvolume:/var/volumes/ \
   -d mcr.microsoft.com/mssql/server:2017-latest
