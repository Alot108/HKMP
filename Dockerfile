FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /app

RUN apt-get update && apt-get install -y wget unzip
RUN wget https://github.com/Extremelyd1/HKMP/releases/download/v2.4.3/HKMPServer-linux-x64.zip
RUN unzip HKMPServer-linux-x64.zip -d /app

EXPOSE 26950
CMD ["./HKMPServer", "26950"]
