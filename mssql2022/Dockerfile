FROM mcr.microsoft.com/mssql/server:2022-latest

LABEL org.opencontainers.image.source="https://github.com/openentity/adventureworksltdb" \
      org.opencontainers.image.description="Sample AdventureWorksLT database for testing"

ARG MSSQL_SA_PASSWORD
ENV MSSQL_SA_PASSWORD=${MSSQL_SA_PASSWORD}
EXPOSE 1433
WORKDIR /
COPY ./adventureworkslt.bak ./adventureworkslt.bak
COPY ./install.sql .
COPY --chmod=0755 ./install.sh .
COPY --chmod=0755 ./startup.sh .
CMD /bin/bash ./startup.sh