# Base image used for hosting the server is Ubuntu 22.04
FROM ubuntu:22.04

# Install .NET 6 and Git
RUN \
    apt-get update && \
    apt-get install -y \
        dotnet6 \
        git

# Create and head to the project folder
WORKDIR /home/speedoku-royale-server

# Installing entity framework but only for this project
RUN dotnet new tool-manifest
RUN dotnet tool install dotnet-ef --version 6.0.8

# Copy the cloned repo contents and appsetting files into the project folder
COPY ./SpeedokuRoyaleServer .
COPY ./appsettings.json .
COPY ./build-and-run.sh .

# Port that will be avaliable
EXPOSE 8000:8000

# When server starts, build-and-run will be executed
CMD bash build-and-run.sh
