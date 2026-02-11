# Docker AdventureWorksLT

Docker image of AdventureWorksLT sample database.

## SQL Sever with Docker Desktop
### Build docker image
1. Change current directory to `mssql2022`;
2. Run `build.sh`.

### Settings to start container
- Container Name: `MSSQL.AdventureWorksLT`
- Ports: `1433`
- Environment Variables: `ACCEPT_EULA:Y`, `MSSQL_SA_PASSWORD:<password>`

### Connection from SQL Server Management Studio:
- ServerName: `.`
- Authentication: `SQL Server Authentication`
- User Name: `sa`
- Password: `<password>`

## PostgresSql with Docker Desktop
### Build docker image
1. Change current directory to `postgres18`;
2. Run `build.sh`.

If `docker build` fails due to permission issues such as `failed to fetch anonymous token`, you can make a `docker pull` before running `docker builder`:
```
docker pull postgres:18
```

### Settings to start container
- Container Name: `Postgres.AdventureWorksLT`
- Ports: `5432`
- Environment Variables: `POSTGRES_USER:admin`, `POSTGRES_PASSWORD:<password>`

### Connection from pgAdmin:
- Hostname/address: `localhost`
- Port: `5432`
- Username: `admin`
- Password: `<password>`

## Publish to Github Packages
- Set `CR_PAT` environment variable with your GitHub Personal Access Token (PAT) that has the `write:packages` scope.
- Run the following command to log in to GitHub Container Registry (GHCR), and push the docker images:
```
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
docker push ghcr.io/openentity/docker-adventureworkslt:mssql2022
docker push ghcr.io/openentity/docker-adventureworkslt:postgres18
```

## Consue the docker images from Github Packages
- Run the following command to pull the docker images:
```
docker pull ghcr.io/openentity/docker-adventureworkslt:mssql2022
docker pull ghcr.io/openentity/docker-adventureworkslt:postgres18
```