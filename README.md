# Django Application Containerization with Docker

This guide walks you through containerizing a Django web application using Docker. This process involves creating a Docker environment for our Django web application and running it locally.

## Prerequisites

Before you start, ensure you have Docker installed on your machine. If not, follow the instructions on the [Docker official website](https://docs.docker.com/get-docker/) to install Docker.

## Setup

1. **Clone the Repository**

   Clone this repository to your local machine to get started with the project setup.

   ```sh
   git clone https://github.com/KarkiAnmol/Django-app-containerization.git
   ```
   

3. **Navigate to Project Directory**

   Change into the directory where the project is located.
   ```sh
   cd ~/Django-app-containerization
   ```

5. **Build Docker Image**

   In the root directory of the project, where the `Dockerfile` is located, run the following command to build your Docker image:

   ```sh
   docker build .
   ```

   This command reads the `Dockerfile` in the current directory and builds a Docker image according to the specifications.

6. **List Docker Images**

   After the build completes, list all the Docker images to find the image ID of your newly built image:

   ```sh
   docker images
   ```

7. **Run the Docker Container**

   With the image ID obtained from the previous step, run the following command to start your container. Replace `<image_id>` with your actual image ID:

   ```sh
   docker run -p 8000:8000 -it <image_id>
   ```

   This command runs the Docker container and forwards the container's port 8000 to the host's port 8000, allowing you to access the application locally.

## Accessing the Application

Once the server starts, the web application is accessible at:

- Main application: [http://0.0.0.0:8000/](http://0.0.0.0:8000/)
- Polls application: [http://0.0.0.0:8000/polls](http://0.0.0.0:8000/polls)
- Admin panel: [http://0.0.0.0:8000/admin](http://0.0.0.0:8000/admin)

You can interact with the polls application or manage it through the admin panel.

## Development Notes

- The Dockerfile used for this project installs Python and Django, then sets up the Django project and application. It also includes a `requirements.txt` file to manage Python dependencies.
- For changes to take effect, you may need to rebuild the Docker image and rerun the container.


