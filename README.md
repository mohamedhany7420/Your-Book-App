# Your Book App

Your Book App is a Flutter application that allows users to browse and read books.
The app is built using the Cubit pattern for state management,
follows the MVVM (Model-View-ViewModel) architecture, and adheres to SOLID principles.
The `get_it` package is used for dependency injection, and the `dio` package is used for API interaction.

## Screenshots

<p align="center">
  <img src="https://github.com/mohamedhany7420/Your-Book-App/blob/9deb07fecb2d3e68b67e2708b3f03415d6bbf7ba/photo_3_2025-01-30_08-27-58.jpg" alt="Screenshot 1" width="200"/>
  <img src="https://github.com/mohamedhany7420/Your-Book-App/blob/9deb07fecb2d3e68b67e2708b3f03415d6bbf7ba/photo_4_2025-01-30_08-27-58.jpg" alt="Screenshot 2" width="200"/>
  <img src="https://github.com/mohamedhany7420/Your-Book-App/blob/9deb07fecb2d3e68b67e2708b3f03415d6bbf7ba/photo_5_2025-01-30_08-27-58.jpg" alt="Screenshot 3" width="200"/>
  <img src="https://github.com/mohamedhany7420/Your-Book-App/blob/9deb07fecb2d3e68b67e2708b3f03415d6bbf7ba/photo_6_2025-01-30_08-27-58.jpg" alt="Screenshot 4" width="200"/>
</p>

## Features

- Browse books
- View book details
- Search for books
- open free books as pdf
- pinned section for programming books

## Architecture

The app follows the MVVM architecture:

- **Model**: Represents the data layer of the application. This includes data models and API services.
- **View**: Represents the UI layer of the application. This includes Flutter widgets.
- **ViewModel**: Acts as a bridge between the Model and View layers. It handles business logic and state management using Cubit.

## Packages Used

- `flutter_bloc`: For state management using Cubit.
- `get_it`: For dependency injection and applying the singleton pattern.
- `dio`: For making HTTP requests and interacting with APIs.
- `cupertino_icons`: For iOS style icons.
- `cached_network_image`: For efficient image loading and caching.
- `git`: For version control.
- `go_router`: For navigation and routing.
- `dartz`: For functional programming utilities.
- `equatable`: For simplifying equality comparisons.
- `url_launcher`: For launching URLs.

## SOLID Principles

The app adheres to the following SOLID principles:

- **Single Responsibility Principle**: Each class has a single responsibility.
- **Open/Closed Principle**: Classes are open for extension but closed for modification.



