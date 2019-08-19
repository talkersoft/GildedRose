
FROM microsoft/dotnet:latest

# Create directory for the app source code
RUN mkdir -p /app
WORKDIR /app
# Copy the source and restore dependencies
COPY . /app
RUN dotnet restore
RUN dotnet build

# Expose the port and start the app
EXPOSE 5000
CMD [ "dotnet", "run" ]
 