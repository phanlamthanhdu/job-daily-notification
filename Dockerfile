FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# ARG BUILD_DATE
# ARG GIT_REF
# ARG GIT_SHA
# ARG APPLICATION

COPY . ./

RUN echo "Here is build"

FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled AS final
WORKDIR /app

ARG BUILD_DATE
ARG GIT_REF
ARG GIT_SHA
ARG APPLICATION

run |
    echo "BUILD_DATE"
    echo "GIT_REF"
    echo "GIT_SHA"
    echo "APPLICATION"