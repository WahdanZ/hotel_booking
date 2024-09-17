import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

void main() {
  runApp(const FlutterDeckExample());
}

class FlutterDeckExample extends StatelessWidget {
  const FlutterDeckExample({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      configuration: FlutterDeckConfiguration(
        // Define a global background for the light and dark themes separately.
        background: const FlutterDeckBackgroundConfiguration(
          light: FlutterDeckBackground.gradient(
            LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFFDEE9), Color(0xFFB5FFFC)],
            ),
          ),
          dark: FlutterDeckBackground.gradient(
            LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF16222A), Color(0xFF3A6073)],
            ),
          ),
        ),
        // Set defaults for the footer.
        footer: const FlutterDeckFooterConfiguration(
          showSlideNumbers: true,
          showSocialHandle: true,
        ),
        // Set defaults for the header.
        header: const FlutterDeckHeaderConfiguration(
          showHeader: false,
        ),
        // Override the default marker configuration.
        marker: const FlutterDeckMarkerConfiguration(
          color: Colors.cyan,
          strokeWidth: 8,
        ),
        // Show progress indicator with specifc gradient and background color.
        progressIndicator: const FlutterDeckProgressIndicator.gradient(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pink, Colors.purple],
          ),
          backgroundColor: Colors.black,
        ),
        // Use a custom slide size.
        slideSize: FlutterDeckSlideSize.fromAspectRatio(
          aspectRatio: const FlutterDeckAspectRatio.ratio16x9(),
          resolution: const FlutterDeckResolution.fhd(),
        ),
        // Use a custom transition between slides.
        transition: const FlutterDeckTransition.fade(),
      ),
      lightTheme: FlutterDeckThemeData.fromTheme(
        ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFB5FFFC),
          ),
          useMaterial3: true,
        ),
      ),
      darkTheme: FlutterDeckThemeData.fromTheme(
        ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF16222A),
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
      ),
      slides: const [
        IntroductionSlide(),
        AppFeaturesOverviewSlide(),
        ProjectStructureSlide(),
        TechStackSlide(),
        KeyFeaturesBaseCodeSlide(),
        DependencyInjectionSetupSlide(),
        UseCaseBenefitsSlide(),
        GetHotelsFeatureSlide(),
        FavoritesFeatureSlide(),
        ConclusionSlide(),
      ],
    );
  }
}

class IntroductionSlide extends FlutterDeckSlideWidget {
  const IntroductionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/introduction',
            header: FlutterDeckHeaderConfiguration(
              title: 'Flutter Hotel Booking App',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'Flutter Hotel Booking App',
      subtitle: 'Powered by Flutter & Mason Template',
      theme: FlutterDeckTheme.of(context).copyWith(
        bigFactSlideTheme: FlutterDeckBigFactSlideThemeData(
          titleTextStyle: FlutterDeckTheme.of(context).textTheme.title,
          subtitleTextStyle: FlutterDeckTheme.of(context).textTheme.subtitle,
        ),
      ),
    );
  }
}

class AppFeaturesOverviewSlide extends FlutterDeckSlideWidget {
  const AppFeaturesOverviewSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-features-overview',
            header: FlutterDeckHeaderConfiguration(
              title: 'App Features Overview',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      headerBuilder: (context) => FlutterDeckHeaderTheme(
        data: FlutterDeckHeaderThemeData(
          color: Colors.black, // Custom header background color
          textStyle: FlutterDeckTheme.of(context).textTheme.title.copyWith(
                color: Colors.white, // Custom header text color
                fontSize: 36, // Increased font size for the header
              ),
        ),
        child: const FlutterDeckHeader(title: 'App Features Overview'),
      ),
      leftBuilder: (context) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 40.0),
        // Increased padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' -  Overview: General information and app introduction.',
              style: TextStyle(
                fontSize: 26, // Increased font size for feature titles
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            Text(
              ' -  Hotels: Browse and search available hotels.',
              style: TextStyle(
                fontSize: 26, // Increased font size for feature titles
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            Text(
              ' -  Favorites: Manage and view favorite hotels.',
              style: TextStyle(
                fontSize: 26, // Increased font size for feature titles
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            Text(
              ' -  Account: User profile and settings.',
              style: TextStyle(
                fontSize: 26, // Increased font size for feature titles
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
      rightBuilder:
          // screenshot of the app,
          (context) => Image.asset(
        'screenshots/hotel.png',
      ),
      theme: FlutterDeckTheme.of(context).copyWith(
        splitSlideTheme: const FlutterDeckSplitSlideThemeData(
          rightBackgroundColor: Color(0xFF3A6073),
        ),
      ),
    );
  }
}

class ProjectStructureSlide extends FlutterDeckSlideWidget {
  const ProjectStructureSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/project-structure',
            header: FlutterDeckHeaderConfiguration(
              title: 'Project Structure',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      contentBuilder: (context) => const Padding(
        padding: EdgeInsets.all(32.0),
        // Increased padding for better readability
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Project Structure',
              style: TextStyle(
                fontSize: 36, // Larger font size for title
                fontWeight: FontWeight.bold, // Bold title
                color: Color(0xFF3A6073), // Title color
              ),
            ),
            SizedBox(height: 20),
            Text(
              'The project is structured following the Clean Architecture principles:',
              style: TextStyle(
                fontSize: 24, // Body font size
                color: Colors.black87, // Text color for better contrast
              ),
            ),
            SizedBox(height: 20),
            Text(
              '- Domain Layer: Encapsulates the business logic and entities.',
              style: TextStyle(
                fontSize: 24, // Font size for list items
                fontWeight: FontWeight.bold, // Bold for emphasis
                color: Colors.black87, // Text color
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- Data Layer (Local and Remote): Manages data sources, including local storage with Hive and remote APIs using Dio.',
              style: TextStyle(
                fontSize: 24, // Font size for list items
                fontWeight: FontWeight.bold, // Bold for emphasis
                color: Colors.black87, // Text color
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- Presentation Layer: Handles state management and business logic using Bloc.',
              style: TextStyle(
                fontSize: 24, // Font size for list items
                fontWeight: FontWeight.bold, // Bold for emphasis
                color: Colors.black87, // Text color
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- UI Components: Comprises reusable widgets and UI elements for a consistent user experience.',
              style: TextStyle(
                fontSize: 24, // Font size for list items
                fontWeight: FontWeight.bold, // Bold for emphasis
                color: Colors.black87, // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TechStackSlide extends FlutterDeckSlideWidget {
  const TechStackSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/tech-stack',
            header: FlutterDeckHeaderConfiguration(
              title: 'Tech Stack',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      contentBuilder: (context) => const Padding(
        padding: EdgeInsets.all(32.0),
        // Increased padding for better readability
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Tech Stack',
              style: TextStyle(
                fontSize: 36, // Larger font size for the title
                fontWeight: FontWeight.bold, // Bold title
                color: Color(0xFF3A6073), // Title color
              ),
            ),
            SizedBox(height: 20),
            // Tech Stack Details
            Text(
              '- Mason: Project scaffolding tool for streamlined setup and generation of boilerplate code.',
              style: TextStyle(
                fontSize: 22, // Increased font size for body text
                fontWeight: FontWeight.bold, // Bold for emphasis
                color: Colors.black87, // Text color
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- Hive: Lightweight and fast local storage solution for managing favorite hotels.',
              style: TextStyle(
                fontSize: 22, // Increased font size for body text
                fontWeight: FontWeight.bold, // Bold for emphasis
                color: Colors.black87, // Text color
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- Dio: Powerful HTTP client for making API requests and handling responses.',
              style: TextStyle(
                fontSize: 22, // Increased font size for body text
                fontWeight: FontWeight.bold, // Bold for emphasis
                color: Colors.black87, // Text color
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- Retrofit: Type-safe HTTP client generator for defining API interactions using annotations.',
              style: TextStyle(
                fontSize: 22, // Increased font size for body text
                fontWeight: FontWeight.bold, // Bold for emphasis
                color: Colors.black87, // Text color
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- Bloc: State management library that facilitates the separation of business logic from UI components.',
              style: TextStyle(
                fontSize: 22, // Increased font size for body text
                fontWeight: FontWeight.bold, // Bold for emphasis
                color: Colors.black87, // Text color
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- AutoRoute: Advanced navigation and deep linking library for Flutter applications.',
              style: TextStyle(
                fontSize: 22, // Increased font size for body text
                fontWeight: FontWeight.bold, // Bold for emphasis
                color: Colors.black87, // Text color
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- get_it: A service locator that provides easy access to dependencies throughout your application.',
              style: TextStyle(
                fontSize: 22, // Increased font size for body text
                fontWeight: FontWeight.bold, // Bold for emphasis
                color: Colors.black87, // Text color
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- injectable: A code generation package that automates the process of registering dependencies in get_it.',
              style: TextStyle(
                fontSize: 22, // Increased font size for body text
                fontWeight: FontWeight.bold, // Bold for emphasis
                color: Colors.black87, // Text color
              ),
            ),
            // Localization with flutter_intl
            SizedBox(height: 10),
            Text(
              '- flutter_intl: Internationalization and localization package for managing app translations.',
              style: TextStyle(
                fontSize: 22, // Increased font size for body text
                fontWeight: FontWeight.bold, // Bold for emphasis
                color: Colors.black87, // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KeyFeaturesBaseCodeSlide extends FlutterDeckSlideWidget {
  const KeyFeaturesBaseCodeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/key-features-base-code',
            header: FlutterDeckHeaderConfiguration(
              title: 'Key Features of the Base Code (Mason)',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      contentBuilder: (context) => const Padding(
        padding: EdgeInsets.all(32.0), // Increased padding for readability
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Key Features of the Base Code (Mason)',
              style: TextStyle(
                fontSize: 36, // Larger font size for the title
                fontWeight: FontWeight.bold, // Bold title
                color: Color(0xFF3A6073), // Title color
              ),
            ),
            SizedBox(height: 20),
            // Introduction
            Text(
              'The base code of this project is built using a custom Mason template I developed, which serves as the foundation for all my projects. It helps streamline the setup process by providing pre-configured components and a scalable structure.',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            // Feature 1
            Text(
              '- Abstract Use Cases for Business Logic: Encapsulate core functionalities, promoting separation of concerns.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold, // Bold for emphasis
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 12),
            // Feature 2
            Text(
              '- Mappers for Model Conversion: Seamlessly convert data models between different layers.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 12),
            // Feature 3
            Text(
              '- Error Handling with Custom Error Models: Ensure consistent error management across the application.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 12),
            // Feature 4
            Text(
              '- CustomResult for Consistent API Responses: Standardize API response handling for reliability and predictability.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 12),
            // Feature 5
            Text(
              '- Theming with Centralized ThemeData: Maintain a unified look and feel through centralized theme management.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 12),
            // Feature 6
            Text(
              '- Logger for Structured Log Messages: Implement detailed and organized logging for debugging and monitoring.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 12),
            // Common Dependencies
            Text(
              '- Common Dependencies Used in the Base Code:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 12),
            Text(
              '- get_it: For dependency injection management.',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '- injectable: Automates the registration of dependencies in get_it.',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '- Dio: For making HTTP requests and handling responses.',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '- Hive: Lightweight database for local storage solutions.',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '- Bloc: State management to separate business logic from the UI.',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DependencyInjectionSetupSlide extends FlutterDeckSlideWidget {
  const DependencyInjectionSetupSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/dependency-injection-setup',
            header: FlutterDeckHeaderConfiguration(
              title: 'Dependency Injection ',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return const Padding(
          padding: EdgeInsets.all(32.0),
          // Increased padding for better readability
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                'Dependency Injection Setup',
                style: TextStyle(
                  fontSize: 36, // Larger font size for the title
                  fontWeight: FontWeight.bold, // Bold title
                  color: Color(0xFF3A6073), // Title color
                ),
              ),
              SizedBox(height: 20),
              Text(
                '- Using get_it and injectable for DI:',
                style: TextStyle(
                  fontSize: 22, // Increased font size for clarity
                  fontWeight: FontWeight.bold, // Bold for emphasis
                  color: Colors.black87, // Text color
                ),
              ),
              SizedBox(height: 12),
              Text(
                '- Service Locator Pattern for Managing Dependencies:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '- Mocking Dependencies: Easily replace real services with mock versions during unit testing.',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '- Isolated Tests: Tests can focus on specific components without worrying about their dependencies.',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),

              Text(
                '- build.yml Integration: Uses build.yml to generate dependencies based on file names without the need to manually register them.',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        );
      },
      rightBuilder: (context) {
        return Container(
          color: Colors.grey.shade200, // Light background for code example
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FlutterDeckCodeHighlight(
                  fileName: 'app_module.dart', code: '''
@module
abstract class AppModule {
  @LazySingleton()
  @Named('base_url')
  @prod
  @dev
  String get baseUrl =>
      const String.fromEnvironment('base_url', defaultValue: "https://dkndmolrswy7b.cloudfront.net/");
  @LazySingleton()
  @Named('dio_client')
  Dio get dio =>
      Dio()..interceptors.addAll([LogInterceptor(responseBody: true)]);

  @preResolve
  @LazySingleton()
  Future<Box<FavoriteHotelModel>> get favoritesBox async {
    return await Hive.openBox<FavoriteHotelModel>('favorites_box');
  }

}

                  '''),
                SizedBox(height: 16),
                FlutterDeckCodeHighlight(
                    fileName: 'build.yaml', language: 'yaml', code: '''
                     builders:
                      injectable_generator:injectable_builder:
                        options:
                          auto_register: true
                          # auto register any class with a name matches the given pattern
                          class_name_pattern:
                            "Service\$|RepositoryImpl\$|Bloc\$|Cubit\$|Mapper|UseCase\$|Client\$"
                          # auto register any class inside a file with a
                          # name matches the given pattern
                          file_name_pattern: "_cubit\$"
                ''')
              ],
            ),
          ),
        );
      },
      theme: FlutterDeckTheme.of(context).copyWith(
        splitSlideTheme: const FlutterDeckSplitSlideThemeData(
          rightBackgroundColor:
              Color(0xFF3A6073), // Light background for code example
        ),
      ),
    );
  }
}

class UseCaseBenefitsSlide extends FlutterDeckSlideWidget {
  const UseCaseBenefitsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/use-case-benefits',
            header: FlutterDeckHeaderConfiguration(
              title: ' Use Cases',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return const Padding(
          padding: EdgeInsets.all(32.0), // Increased padding for readability
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                'Benefits of Using Use Cases in the Project',
                style: TextStyle(
                  fontSize: 36, // Larger font size for the title
                  fontWeight: FontWeight.bold, // Bold title
                  color: Color(0xFF3A6073), // Title color
                ),
              ),
              SizedBox(height: 20),
              // Benefits of Using Use Cases
              Text(
                '- Separation of Business Logic: Encapsulates business logic, making it reusable and easy to maintain.',
                style: TextStyle(
                  fontSize: 22, // Increased font size for clarity
                  fontWeight: FontWeight.bold, // Bold for emphasis
                  color: Colors.black87, // Text color
                ),
              ),
              SizedBox(height: 12),
              Text(
                '- Testability: By separating business logic into use cases, each use case can be unit tested independently.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '- Reusability: Use cases can be reused across different parts of the application without duplicating logic.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '- Cleaner Code: Encourages a clean architecture, with UI components interacting with use cases rather than directly with repositories or data sources.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '- Flexibility: Use cases make the application more modular, allowing for easy changes in the future without affecting the entire codebase.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        );
      },
      rightBuilder: (context) {
        return Container(
          color: Colors.grey.shade200, // Light background for code example
          padding: const EdgeInsets.all(24.0),
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Code Example Title
                Text(
                  'Sample: RemoveFavoriteHotelUseCase',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3A6073), // Title color
                  ),
                ),
                SizedBox(height: 16),
                // Code Example
                FlutterDeckCodeHighlight(
                  fileName: 'remove_favorite_hotel_use_case.dart',
                  code: '''
class RemoveFavoriteHotelUseCase 
    extends UseCaseResult<bool, RemoveFavoriteHotelParams> {
  final HotelRepository _repository;

  RemoveFavoriteHotelUseCase(this._repository);

  @override
  Future<CustomResult<bool>> buildUseCase(RemoveFavoriteHotelParams params) {
    return _repository.removeFavoriteHotel(params.hotelId);
  }
}

class RemoveFavoriteHotelParams extends Params {
  final String hotelId;

  RemoveFavoriteHotelParams({required this.hotelId});

  @override
  List<Object?> get props => [hotelId];
}
                  ''',
                ),
                SizedBox(height: 16),
                // Code Example 2
                FlutterDeckCodeHighlight(
                  fileName: 'favorite_hotel_bloc.dart',
                  code: '''
class FavoriteHotelBloc extends Bloc<FavoriteHotelEvent, FavoriteHotelState> {
  final GetFavoriteHotelsUseCase getFavoriteHotelsUseCase;
  final RemoveFavoriteHotelUseCase removeFavoriteHotelUseCase;

  FavoriteHotelBloc({
    required this.getFavoriteHotelsUseCase,
    required this.removeFavoriteHotelUseCase,
  }) : super(const FavoriteHotelState.initial()) {
    on<FetchFavoriteHotel>(_onFetchFavoriteHotel);
    on<RemoveFavoriteHotel>(_onRemoveFavoriteHotel);
  }
}
                  ''',
                ),
                SizedBox(height: 16),

                FlutterDeckCodeHighlight(
                  fileName: 'hotel_bloc.dart',
                  code: '''
class HotelBloc extends Bloc<HotelEvent, HotelState> {
  final GetHotelsUseCase getHotelsUseCase;
  final AddFavoriteHotelUseCase addFavoriteHotelUseCase;
  final RemoveFavoriteHotelUseCase removeFavoriteHotelUseCase;

  HotelBloc({
    required this.getHotelsUseCase,
    required this.addFavoriteHotelUseCase,
    required this.removeFavoriteHotelUseCase,
  }) : super(const HotelState.initial()) {
    on<FetchHotel>(_onFetchHotel);
    on<AddFavoriteHotel>(_onAddFavoriteHotel);
    on<RemoveFavoriteHotel>(_onRemoveFavoriteHotel);
  }
                  ''',
                ),
              ],
            ),
          ),
        );
      },
      theme: FlutterDeckTheme.of(context).copyWith(
        splitSlideTheme: const FlutterDeckSplitSlideThemeData(
          rightBackgroundColor:
              Color(0xFF3A6073), // Light background for code example
        ),
      ),
    );
  }
}

class GetHotelsFeatureSlide extends FlutterDeckSlideWidget {
  const GetHotelsFeatureSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/get-hotels-feature',
            header: FlutterDeckHeaderConfiguration(
              title: 'Get Hotels Feature',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return const Padding(
          padding: EdgeInsets.all(32.0),
          // Increased padding for better readability
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                'Get List of Hotels Feature',
                style: TextStyle(
                  fontSize: 36, // Larger font size for the title
                  fontWeight: FontWeight.bold, // Bold title
                  color: Color(0xFF3A6073), // Title color
                ),
              ),
              SizedBox(height: 20),
              // Explanation
              Text(
                '- This feature fetches a list of hotels from the remote data source and maps the response to hotel entities.',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '- It uses a network task manager to handle the execution and mapping of the response, adding the "isFavorite" status for each hotel.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '- The logic checks if the hotel is a favorite by comparing hotel IDs with locally stored favorite hotel IDs.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '- Error handling is done using CustomResult and NetworkFailure for a consistent response pattern.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),
              // Text(
              //   'Question: Is this logic better suited for the repository or Bloc?',
              //   style: TextStyle(
              //     fontSize: 22,
              //     fontWeight: FontWeight.bold,
              //     color: Color(0xFF3A6073),
              //   ),
              // ),
              // Text(
              //   '- Logic such as mapping and combining data from different sources (API + local) generally belongs in the repository, as it is concerned with data fetching and preparation.',
              //   style: TextStyle(
              //     fontSize: 20,
              //     color: Colors.black87,
              //   ),
              // ),
              // Text(
              //   '- The Bloc should only handle user interaction, business rules, and state management, keeping data-fetching logic separate.',
              //   style: TextStyle(
              //     fontSize: 20,
              //     color: Colors.black87,
              //   ),
              // ),
            ],
          ),
        );
      },
      rightBuilder: (context) {
        return Container(
          color: Colors.grey.shade200, // Light background for code example
          padding: const EdgeInsets.all(24.0),
          child: const SingleChildScrollView(
            child: FlutterDeckCodeHighlight(
              fileName: 'hotel_repository.dart',
              code: '''
@override
Future<CustomResult<List<HotelEntity>>> getHotels() async {
  try {
    final task = DioNetworkTask(() => remoteDataSource.getHotels());
    final hotels = await networkTaskManager.executeTask(task).thenMap((response) async {
      List<String> favoriteHotelIds = await getFavoriteHotelIds();
      return response.hotels
          .map((hotel) => hotelMapper.mapFromModel(hotel))
          .map((hotel) => hotel.copyWith(
              isFavorite: favoriteHotelIds.contains(hotel.hotelId)))
          .toList();
    });
    return CustomResult.success(hotels);
  } catch (e) {
    return CustomResult.failure(
        NetworkFailure.unknown(message: e.toString()));
  }
}
              ''',
            ),
          ),
        );
      },
      theme: FlutterDeckTheme.of(context).copyWith(
        splitSlideTheme: const FlutterDeckSplitSlideThemeData(
          rightBackgroundColor:
              Colors.white, // Light background for code example
        ),
      ),
    );
  }
}

class AutoRouteBenefitsSlide extends FlutterDeckSlideWidget {
  const AutoRouteBenefitsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/autoroute-benefits',
            header: FlutterDeckHeaderConfiguration(
              title: 'AutoRoute: Benefits and Experiences',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      contentBuilder: (context) => const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '- **Benefits of AutoRoute:**',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '  • **Simplified Navigation:** Provides a declarative way to define routes, making navigation management easier.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              '  • **Deep Linking:** Supports deep linking out of the box, allowing users to navigate directly to specific screens via URLs.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              '  • **Type-Safe Routing:** Ensures routes are type-safe, reducing runtime errors.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              '  • **Built-in Animations:** Facilitates smooth transitions and animations between screens.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              '  • **Route Guards:** Easily implement authentication checks and protect sensitive routes.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              '- **First-Time Usage Experience:**',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '  • **Learning Curve:** Initial setup may require understanding the declarative routing syntax, but it quickly becomes intuitive.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              '  • **Productivity Boost:** Streamlines navigation logic, reducing the time spent managing routes manually.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              '- **Personal Experience:**',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '  • **Ease of Integration:** Seamlessly integrated AutoRoute into the project, enhancing navigation capabilities.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              '  • **Enhanced User Experience:** The built-in animations and deep linking improved the app’s responsiveness and user engagement.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              '  • **Satisfaction:** Highly satisfied with the flexibility and power AutoRoute brings to the navigation system.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class AppFeaturesGlanceSlide extends FlutterDeckSlideWidget {
  const AppFeaturesGlanceSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-features',
            header: FlutterDeckHeaderConfiguration(
              title: 'App Features',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      // Override the header theme
      headerBuilder: (context) => FlutterDeckHeaderTheme(
        data: FlutterDeckHeaderThemeData(
          color: Colors.red, // Custom header background color
          textStyle: FlutterDeckTheme.of(context).textTheme.title.copyWith(
                color: Colors.white, // Custom header text color
              ),
        ),
        child: const FlutterDeckHeader(title: 'App Features '),
      ),
      // Override the footer theme
      footerBuilder: (context) => FlutterDeckFooterTheme(
        data: FlutterDeckFooterThemeData(
          socialHandleColor: Colors.blue, // Custom social handle color
          socialHandleTextStyle:
              FlutterDeckTheme.of(context).textTheme.bodyMedium.copyWith(
                    color: Colors.blue, // Custom social handle text color
                  ),
        ),
        child: const FlutterDeckFooter(showSlideNumber: false),
      ),
      // Override the content theme for specific elements
      contentBuilder: (context) => const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Slide Title
          Text(
            'App Features at a Glance',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          // Feature 1
          Text(
            '- Bottom Navigation Bar with 4 Tabs:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            '  • Overview: General information and app introduction.',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            '  • Hotels: Browse and search available hotels.',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            '  • Favorites: Manage and view favorite hotels.',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            '  • Account: User profile and settings.',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          // Feature 2
          Text(
            '- Display Hotel Cards with API Integration (Dio):',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            '  Fetch and display real-time hotel data from APIs using Dio.',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          // Feature 3
          Text(
            '- Toggle Favorite Status with Hive for Local Storage:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            '  Easily add or remove hotels from favorites, stored locally for quick access.',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          // Feature 4
          Text(
            '- Error Handling with Bloc and Dio:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            '  Robust error management ensuring a smooth user experience even during failures.',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
      theme: FlutterDeckTheme.of(context).copyWith(
          // Additional theme overrides can be added here if needed
          ),
    );
  }
}

class FavoritesFeatureSlide extends FlutterDeckSlideWidget {
  const FavoritesFeatureSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/favorites-feature',
            header: FlutterDeckHeaderConfiguration(
              title: 'Favorites Feature',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return const Padding(
          padding: EdgeInsets.all(32.0), // Increased padding for readability
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                'Favorites Feature',
                style: TextStyle(
                  fontSize: 36, // Larger font size for the title
                  fontWeight: FontWeight.bold, // Bold title
                  color: Color(0xFF3A6073), // Title color
                ),
              ),
              SizedBox(height: 20),
              // Explanation
              Text(
                '- The Favorites feature allows users to mark hotels as favorites and store them locally using Hive.',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '- Hive is used to store favorite hotel data in a local box called "favorites_box", allowing offline access to favorites.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '- The `HotelLocalDataSourceImpl` manages the favorites box by adding, removing, and retrieving favorite hotels. It also checks whether a hotel is marked as a favorite.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '- Bloc (`FavoriteHotelBloc`) handles state management and interacts with use cases for adding and removing favorite hotels. It listens for events and updates the state accordingly.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '- The feature keeps local favorites synced with the API, ensuring consistency across sessions and devices.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        );
      },
      rightBuilder: (context) {
        return Container(
          color: Colors.grey.shade200, // Light background for code example
          padding: const EdgeInsets.all(24.0),
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Code Example Title
                Text(
                  'Sample: HotelLocalDataSourceImpl',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3A6073), // Title color
                  ),
                ),
                SizedBox(height: 16),
                // Code Example 1 (HotelLocalDataSourceImpl)
                FlutterDeckCodeHighlight(
                  fileName: 'hotel_local_data_source.dart',
                  code: '''
@Injectable(as: HotelLocalDataSource)
class HotelLocalDataSourceImpl implements HotelLocalDataSource {
  final Box<FavoriteHotelModel> _favoritesBox;

  HotelLocalDataSourceImpl( this._favoritesBox);

  @override
  Future<void> addFavoriteHotel(FavoriteHotelModel hotel) async {
    await _favoritesBox.put(hotel.hotelId, hotel);
  }

  @override
  Future<void> removeFavoriteHotel(String hotelId) async {
    await _favoritesBox.delete(hotelId);
  }

  @override
  Future<List<FavoriteHotelModel>> getFavoriteHotels() async {
    return _favoritesBox.values.toList();
  }

  @override
  Future<bool> isFavorite(String hotelId) async {
    return _favoritesBox.containsKey(hotelId);
  }

  @override
  Future<bool> close() async {
    if (_favoritesBox.isOpen) {
      await _favoritesBox.close();
      return true;
    }
    return false;
  }

  bool isFavoritesBoxOpen() => _favoritesBox.isOpen;
}
                  ''',
                ),
                SizedBox(height: 16),
                // Code Example 2 (FavoriteHotelBloc)
                FlutterDeckCodeHighlight(
                  fileName: 'favorite_hotel_bloc.dart',
                  code: '''
class FavoriteHotelBloc extends Bloc<FavoriteHotelEvent, FavoriteHotelState> {
  final GetFavoriteHotelsUseCase getFavoriteHotelsUseCase;
  final RemoveFavoriteHotelUseCase removeFavoriteHotelUseCase;

  FavoriteHotelBloc({
    required this.getFavoriteHotelsUseCase,
    required this.removeFavoriteHotelUseCase,
  }) : super(const FavoriteHotelState.initial()) {
    on<FetchFavoriteHotel>(_onFetchFavoriteHotel);
    on<RemoveFavoriteHotel>(_onRemoveFavoriteHotel);
  }

  Future<void> _onFetchFavoriteHotel(FetchFavoriteHotel event, Emitter<FavoriteHotelState> emit) async {
    emit(const FavoriteHotelState.loading());
    final result = await getFavoriteHotelsUseCase.execute(params: Any());
    _handleResult(result, emit, (data) {
      emit(FavoriteHotelState.loaded(data));
    });
  }

  Future<void> _onRemoveFavoriteHotel(RemoveFavoriteHotel event, Emitter<FavoriteHotelState> emit) async {
    await removeFavoriteHotelUseCase.execute(
        params: RemoveFavoriteHotelParams(hotelId: event.hotelId));
    add(const FetchFavoriteHotel());
  }

  void _handleResult(CustomResult result, Emitter<FavoriteHotelState> emit,
      Function onSuccess) {
    result.when(
      success: (data) => onSuccess(data),
      failure: (error) =>
          emit(FavoriteHotelState.error(error.message ?? 'unknown error')),
    );
  }
}
                  ''',
                ),
              ],
            ),
          ),
        );
      },
      theme: FlutterDeckTheme.of(context).copyWith(
        splitSlideTheme: const FlutterDeckSplitSlideThemeData(
          rightBackgroundColor:
              Colors.white, // Light background for code example
        ),
      ),
    );
  }
}

class ConclusionSlide extends FlutterDeckSlideWidget {
  const ConclusionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conclusion',
            header: FlutterDeckHeaderConfiguration(
              title: 'Conclusion & Thanks',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      contentBuilder: (context) => const Center(
        child: Padding(
          padding: EdgeInsets.all(32.0), // Increased padding for readability
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title
              Text(
                'Thank You for Your Attention!',
                style: TextStyle(
                  fontSize: 40, // Larger font size for the title
                  fontWeight: FontWeight.bold, // Bold title
                  color: Color(0xFF3A6073), // Title color
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              // Conclusion points
              Text(
                'Conclusion:',
                style: TextStyle(
                  fontSize: 30, // Subheading size
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              // Conclusion Points
              Text(
                '- We implemented clean architecture principles throughout the project.',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12),
              Text(
                '- The use of UseCases streamlined business logic and improved testability.',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12),
              Text(
                '- Hive provided efficient local storage, particularly for the Favorites feature.',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12),
              Text(
                '- Bloc state management ensured clean separation between logic and UI.',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12),
              Text(
                '- Dependency injection (with get_it and injectable) provided modular, testable code.',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
