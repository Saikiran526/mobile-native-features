# mobile_native_features

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


----- FOLDER STRUCTURE ----- 

mobile_native_features/
│
├── android/                     # Native Android code
├── ios/                         # Native iOS code
├── linux/                       # Optional Linux support
├── macos/                       # Optional macOS support
├── windows/                     # Optional Windows support
│
├── lib/
│   ├── main.dart                # Entry point of the app
│   ├── config/
│   │   ├── app.dart             # App root widget (MaterialApp / CupertinoApp)
│   │   ├── routes/              # Named routes & route generators
│   │   └── di/                  # Dependency injection setup (get_it / riverpod)
│   │
│   ├── infrastructure/          # Global app-wide utilities
│   │   ├── constants/           # Colors, strings, dimensions, theme constants
│   │   ├── enums/               # Global enums
│   │   ├── errors/              # Custom exceptions & error handling
│   │   ├── network/             # API client, interceptors, network utilities
│   │   └── utils/               # Helpers, validators, formatters
│   │
│   ├── domain/                  # Business logic layer
│   │   ├── entities/            # Pure domain models (independent of frameworks)
│   │   ├── repositories/        # Abstract repository interfaces
│   │   └── usecases/            # Business logic operations (single responsibility)
│   │
│   ├── data/                    # Data layer
│   │   ├── models/              # DTOs / API response models
│   │   ├── repositories/        # Repository implementations
│   │   ├── services/            # API services, Firebase, local storage
│   │   └── datasources/         # Remote / Local data sources
│   │
│   ├── presentation/            # UI layer
│   │   ├── features/            # Feature-based folder structure
│   │   │   ├── auth/
│   │   │   │   ├── screens/     # Screens like login, signup
│   │   │   │   ├── widgets/     # Feature-specific UI components
│   │   │   │   └── viewmodels/  # Feature-specific state management
│   │   │   ├── home/
│   │   │   │   ├── screens/
│   │   │   │   ├── widgets/
│   │   │   │   └── viewmodels/
│   │   │   └── profile/         # Another feature
│   │   │       ├── screens/
│   │   │       ├── widgets/
│   │   │       └── viewmodels/
│   │   ├── shared/              # UI shared across features
│   │   │   ├── widgets/         # Buttons, cards, headers
│   │   │   └── themes/          # App theme, typography, styling
│   │   └── app_state/           # Global state management (providers / riverpod)
│   │
├── assets/                       # Images, fonts, icons, Lottie, translations
│   ├── images/
│   ├── fonts/
│   ├── icons/
│   └── lottie/
│
├── test/                          # Unit, widget, and integration tests
│   ├── unit/
│   ├── widget/
│   └── integration/
│
├── pubspec.yaml                   # Project dependencies
└── README.md
