# Laravel Application with Docker Compose

This repository contains a Laravel application set up to run with Docker using Docker Compose. Below are instructions on
how to set up and run the application.

## Prerequisites

Before you begin, ensure you have the following installed on your local machine:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

To get the Laravel application running on your local machine, follow these steps:

1. **Clone the Repository**

   ```bash
   git clone https://github.com/MelomiLight/admin_app_tz.git
   cd your-repository

2. **Set Up Environment Variables**

   Create a .env file in the root of your project based on the .env.example file provided. Update the variables as
   needed, especially database credentials.

3. **Build and Start Docker Containers**

   Run Docker Compose to build the necessary images and start the containers:

   ```bash
    make start
    ```
   This command builds the Docker images specified in docker-compose.yml and starts the containers in detached mode (
   -d).

4. **Run Migrations and Seed Database**

   Once the containers are up, execute Laravel migrations to set up the database schema and seed initial data (if
   applicable):

   ```bash
   make migrate
   make seed
    ```
5. **Access the Application**

   After successfully starting the containers, you should be able to access the Laravel application
   at http://localhost:8080 (assuming port 8080 is mapped to your nginx service in docker-compose.yml).





