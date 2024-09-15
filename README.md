# Hotel Booking App

A Flutter-based hotel booking app that allows users to browse hotels, manage favorite hotels, and view hotel details.
The app integrates with a remote API for fetching hotel data and uses local storage to manage favorites. It follows
clean architecture principles and is built with Bloc for state management.

## Screenshots

## Task Description

The task was to build a hotel booking app using Flutter that allows users to:

- View a list of available hotels.
- Manage a list of favorite hotels (add and remove favorites).
- Store favorite hotels locally for offline access.
- Fetch hotel data from a remote API.
- Display loading indicators and error messages based on the API response.

The project is implemented using Clean Architecture and Bloc for state management, and it can be extended for web,
mobile, and desktop platforms.

## API Integration

The app integrates with a remote API to fetch hotel data. Here's the API used for fetching hotels:

- **Hotel List API
  **: [https://dkndmolrswy7b.cloudfront.net/hotels.json](https://dkndmolrswy7b.cloudfront.net/hotels.json)

## Favorite Hotels Management

The app allows users to add and remove hotels from their list of favorite hotels. These favorites are stored locally
using Hive, providing persistence even after the app is closed. The following functionalities are supported:

- **Add to Favorites**: Users can tap the heart icon on a hotel card to add it to their favorites.
- **Remove from Favorites**: Users can tap the heart icon again to remove a hotel from their favorites.
- **Favorites Tab**: A dedicated tab displays the list of favorite hotels.
- **Local Storage**: Favorites are stored locally using Hive, allowing offline access to the favorite list.

## Project Structure

The project follows clean architecture principles with a feature-based folder structure, ensuring scalability and
maintainability.

```
hotel_booking_app/
├── lib/
│   ├── base/                     # Base classes and utilities
│   ├── di/                       # Dependency injection setup
│   │   └── injector.dart         # Injector configuration file
│   ├── features/                 # Main features of the app
│   │   ├── hotel/                # Hotel feature (hotel listing, favorite management)
│   │   │   ├── data/             # Data layer (models, repository)
│   │   │   │   ├── local/        # Local data sources (Hive)
│   │   │   │   ├── remote/       # Remote data sources (API)
│   │   │   │   ├── models/       # Data models (HotelModel, FavoriteHotelModel)
│   │   │   │   ├── repository/   # Repository implementation
│   │   │   ├── domain/           # Domain layer (entities, use cases)
│   │   │   │   ├── entities/     # Domain entities (HotelEntity, FavoriteHotelEntity)
│   │   │   │   ├── usecases/     # Use cases for hotel and favorite hotel logic
│   │   │   ├── presentation/     # Presentation layer (Bloc, UI)
│   │   │   │   ├── bloc/         # Bloc state management for hotel and favorite logic
│   │   │   │   ├── pages/        # UI pages (Hotel list, favorite list)
│   │   │   │   └── widgets/      # Reusable UI components (HotelCard, FavoriteButton)
│   ├── main.dart                 # Entry point of the application
├── test/
│   ├── mocks.dart                # Mock classes for testing
│   ├── unit_tests/               # Unit tests for various features
│   │   ├── hotel/                # Unit tests for hotel feature
│   └── test_injection.dart       # Test dependency injection setup
├── pubspec.yaml                  # Dart dependencies
```

### Key Features:

- **Hotel Listing**: Browse a list of available hotels fetched from the API.
- **Favorite Hotels**: Manage a list of favorite hotels stored locally.
- **State Management**: The app uses Bloc for state management, separating UI from business logic.
- **Clean Architecture**: The app follows the clean architecture pattern with separation of concerns.

## How to Run the App

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install)
- [FVM (Flutter Version Management)](https://fvm.app/documentation/getting-started/installation)

### Setup

1. **Clone the repository**
    ```bash
    git clone https://github.com/WahdanZ/hotel_booking.git
    cd hotel_booking
    ```

2. **Install dependencies using FVM**
    ```bash
    fvm install
    fvm use
    ```

3. **Get Flutter packages**
    ```bash
    fvm flutter pub get
    ```

4. **Generate necessary files**
    ```bash
    fvm flutter pub run build_runner build --delete-conflicting-outputs
    ```

## Usage

**Run the app**

```bash
fvm flutter run
```

## Testing

### Unit Tests

1. **Run unit tests**
    ```bash
    fvm flutter test
    ```

This `README.md` provides a clear and comprehensive guide to your hotel booking app, detailing its key features, API
integration, project structure, and setup instructions. Let me know if you need any further modifications!