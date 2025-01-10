# Welcome to ReMarketPro API :train:

[ReMarketPro API](https://loco.rs) is a fully dockerized web and API framework running on Rust, designed to power a client remarketing project for businesses.

This project includes a `User` model and authentication based on JWT. It also includes configuration sections that help you pick either a frontend or a server-side template setup for your fullstack server.

**Note:** This project is currently under development.

## Quick Start

To get started with the ReMarketPro API, follow these steps:

1. Clone the repository:
    ```sh
    git clone git@github.com:pedro-val/ReMarketPro_api.git
    cd ReMarketPro_api
    ```

2. Build and run the Docker containers:
    ```sh
    docker-compose up --build
    ```

3. The API will be available at:
    ```
    http://localhost:5150
    ```

## Full Stack Serving

You can check your configuration to pick either frontend setup or server-side rendered template, and activate the relevant configuration sections.

## Endpoints

The API provides the following endpoints:

- **POST /api/auth/register**: Register a new user.
- **GET /api/auth/verify/{token}**: Verify a magic link token and authenticate the user.
- **POST /api/auth/login**: Log in a user.
- **POST /api/auth/forgot**: Send a password reset email.
- **POST /api/auth/reset**: Reset the user's password.
- **GET /api/auth/current**: Get the current authenticated user's information.
- **POST /api/auth/magic-link**: Send a magic link to the user's email.
- **GET /api/auth/magic-link/{token}**: Verify a magic link token and authenticate the user.

## Getting Help

Check out [a quick tour](https://loco.rs/docs/getting-started/tour/) or [the complete guide](https://loco.rs/docs/getting-started/guide/).

## License

This project is licensed under the MIT License. See the LICENSE file for details.