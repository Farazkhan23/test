# Profile Card Flutter App 🏷️

A modern Flutter application featuring an elegant and interactive profile card interface for social networking and dating applications.

## ✨ Features

### 🎯 Profile Card Interface
- **Dynamic Profile Display**: Interactive profile cards with smooth animations
- **Image Carousel**: Swipeable photo gallery with page indicators
- **Quality Chips**: Customizable personality trait tags
- **Skeleton Loading**: Beautiful loading states with shimmer effects
- **Pull-to-Refresh**: Seamless content refresh functionality

### 👤 User Profile Details
- **Personal Information**: Name, age, location with country flag
- **Identity Features**: Gender identity and pronouns display
- **About Section**: Character-limited bio with dynamic counter
- **Photo Gallery**: Multiple high-quality profile images
- **Interactive Buttons**: Chat and profile action buttons

### 🏗️ Architecture
- **Clean Architecture**: Separation of concerns with domain, data, and presentation layers
- **BLoC Pattern**: State management using Flutter BLoC
- **Freezed Models**: Immutable data classes with JSON serialization
- **Repository Pattern**: Clean data layer abstraction

## 🛠️ Tech Stack

### Core Technologies
- **Flutter**: Cross-platform mobile development framework
- **Dart**: Programming language optimized for UI development

### State Management
- **flutter_bloc**: Predictable state management library
- **bloc**: Core BLoC library for reactive programming

### UI/UX Libraries
- **cached_network_image**: Efficient image loading and caching
- **flutter_svg**: SVG rendering support
- **skeletonizer**: Skeleton loading animations
- **google_fonts**: Custom typography

### Data & Serialization
- **freezed**: Code generation for immutable classes
- **json_annotation**: JSON serialization annotations
- **json_serializable**: Automatic JSON serialization

## 📦 Installation

### Prerequisites
- Flutter SDK (3.8.0 or higher)
- Dart SDK
- Android Studio / VS Code
- Git

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd test
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate code**
   ```bash
   flutter packages pub run build_runner build
   ```

4. **Run the application**
   ```bash
   flutter run
   ```

## 🏗️ Project Structure

```
lib/
├── data/
│   ├── model/
│   │   └── user.dart              # User data model
│   ├── repository/                # Data repositories
│   └── source/                    # Data sources
├── domain/                        # Business logic layer
├── presentation/
│   ├── bloc/
│   │   └── profile_bloc.dart      # Profile state management
│   ├── screens/
│   │   └── profile.dart           # Main profile screen
│   ├── utils/
│   │   └── colors.dart           # Color palette
│   └── widgets/
│       ├── quality_chip.dart     # Personality trait chips
│       └── semi_circle_btn.dart  # Action buttons
└── main.dart                     # Application entry point
```

## 🎨 Key Components

### ProfileScreen
The main screen featuring:
- Responsive profile card layout
- Image carousel with smooth page transitions
- User information display
- Interactive action buttons
- Loading states with skeleton animations

### QualityChip
Reusable component for displaying personality traits:
- Customizable styling
- Rounded design
- Flexible content

### SemiCircleBtn
Action buttons with:
- Semi-circular design
- Customizable colors
- Touch feedback

## 🔧 Configuration

### Assets Configuration
The app includes:
- **Icons**: SVG icons for UI elements
- **Data**: JSON files for user profiles
- **Fonts**: Google Fonts integration

### Environment Setup
Update `pubspec.yaml` for:
- Asset paths
- Font configurations
- Dependency versions

## 📱 Usage

### Basic Profile Display
```dart
ProfileScreen() // Displays user profile with all features
```

### Loading New Profiles
The app supports pull-to-refresh to load different user profiles dynamically.

### Customization
- Modify colors in `lib/presentation/utils/colors.dart`
- Update user model in `lib/data/model/user.dart`
- Customize widgets in `lib/presentation/widgets/`

