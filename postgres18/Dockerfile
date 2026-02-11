FROM postgres:18

LABEL org.opencontainers.image.source=https://github.com/openentity/docker-adventureworkslt

# Set environment variables for PostgreSQL
ENV POSTGRES_DB=AdventureWorksLT

# Copy the initialization SQL script into the Docker image
COPY init.sql /docker-entrypoint-initdb.d/

# Copy the CSV file into the Docker image
COPY SalesLT.Address.csv /docker-entrypoint-initdb.d/SalesLT.Address.csv
COPY SalesLT.Customer.csv /docker-entrypoint-initdb.d/SalesLT.Customer.csv
COPY SalesLT.CustomerAddress.csv /docker-entrypoint-initdb.d/SalesLT.CustomerAddress.csv
COPY SalesLT.ProductCategory.csv /docker-entrypoint-initdb.d/SalesLT.ProductCategory.csv
COPY SalesLT.ProductModel.csv /docker-entrypoint-initdb.d/SalesLT.ProductModel.csv
COPY SalesLT.ProductDescription.csv /docker-entrypoint-initdb.d/SalesLT.ProductDescription.csv
COPY SalesLT.ProductModelProductDescription.csv /docker-entrypoint-initdb.d/SalesLT.ProductModelProductDescription.csv
COPY SalesLT.Product.csv /docker-entrypoint-initdb.d/SalesLT.Product.csv
COPY SalesLT.SalesOrderHeader.csv /docker-entrypoint-initdb.d/SalesLT.SalesOrderHeader.csv
COPY SalesLT.SalesOrderDetail.csv /docker-entrypoint-initdb.d/SalesLT.SalesOrderDetail.csv

# Expose the PostgreSQL port
EXPOSE 5432
