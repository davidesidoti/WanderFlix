# WanderFlix

WanderFlix is a personal web application built with Laravel Filament for tracking movies and TV shows, as well as organizing trip plans. This app is designed for personal use by Davide and Sara to streamline their entertainment and travel planning.

## Features

- **Movie and TV Show Tracking**: Keep track of what has been watched and what's on the watchlist.
- **Trip Planning**: Plan future trips, complete with itineraries, destinations, and notes.

## Technology Stack

- **Laravel**: A robust PHP framework for modern web applications.
- **Filament**: An admin panel framework for Laravel.
- **MySQL**: Database management.
- **Tailwind CSS**: For styling and responsive design.

## Setup

To run this project locally, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/tuonomeutente/WanderFlix.git
   ```

2. Navigate to the project directory:
    ```bash
    cd WanderFlix
    ```

3. Install dependencies:
    ```bash
    composer install
    npm install
    ```

4. Copy the `.env.example` file to `.env` and configure your database:
    ```bash
    cp .env.example .env
    ```

5. Generate the application key:
    ```bash
    php artisan key:generate
    ```

6. Run migrations:
    ```bash
    php artisan migrate
    ```

7. Start the development server:
    ```bash
    php artisan serve
    ```

## Future Improvements

- Add social media integration to share trip plans.
- Create reccomendation system for movies and TV shows based on watch history.

## License

This project is open-source and available under the GNU General Public License v3.0.
