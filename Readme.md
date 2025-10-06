# Docker AdventureWorksLT

Docker image of AdventureWorksLT sample database.

## SQL Sever with Docker Desktop
### Build docker image
1. Change current directory to `mssql\2022`;
2. Download file https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksLT2022.bak to current directory;
3. Run `docker build . -t openentity/adventureworkslt:mssql2022 --build-arg BAK_FILE=./adventureworkslt.bak`.

### Settings to start container
- Container Name: `MSSQL.AdventureWorksLT`
- Ports: 1433
- Environment Variables: `ACCEPT_EULA:Y`, `MSSQL_SA_PASSWORD:<password>`

### Connection from SQL Server Management Studio:
- ServerName: `.`
- Authentication: `SQL Server Authentication`
- User Name: `sa`
- Password: `<password>`