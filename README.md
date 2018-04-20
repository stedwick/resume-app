# README

This is Philip Brocoum's resume website at [https://philipbrocoum.com](https://philipbrocoum.com/). It's made with [Rails 5](http://rubyonrails.org), [Bootstrap 4](https://getbootstrap.com), and [PostgreSQL](https://www.postgresql.org). It's deployed to [Microsoft Azure](https://azure.microsoft.com/) using [Docker](https://www.docker.com), [Let's Encrypt](https://letsencrypt.org/), [HAProxy](http://www.haproxy.org), [Nginx](http://nginx.org), and [Puma](http://puma.io).

To run my resume site locally:

1. Install Docker for Mac

    ```bash
    brew cask install docker
    ```

1. Build the project

    ```bash
    docker-compose build
    ```

1. Create the resume network

    ```bash
    docker network create resume
    ```

1. Start the PostgreSQL database

    ```bash
    docker-compose up db
    ```

1. Seed the database

    ```bash
    docker-compose run --rm app bin/setup
    ```
1. Start the Rails app

    ```bash
    docker-compose up app
    ```

1. By default no ports are exposed, so run the Nginx web server on port 8080

    ```bash
    docker-compose run --rm -p 8080:80 web
    ```

1. Visit [http://localhost:8080/](http://localhost:8080/) in your browser.
