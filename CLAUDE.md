# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Repara Gym is a Flutter mobile application built with FlutterFlow that appears to be a fitness/health-related app with video content, AI chat functionality, and user authentication. The app uses a page-based navigation structure with multiple screens for different functionalities.

## Commands

### Development Commands
- `flutter run` - Run the app in development mode
- `flutter run --release` - Run in release mode
- `flutter build apk` - Build Android APK
- `flutter build ios` - Build iOS app
- `flutter build web` - Build for web platform

### Testing and Quality
- `flutter test` - Run unit tests
- `flutter analyze` - Run static analysis and linting
- `flutter doctor` - Check Flutter installation and dependencies

### Dependencies
- `flutter pub get` - Install dependencies from pubspec.yaml
- `flutter pub upgrade` - Upgrade dependencies
- `flutter clean` - Clean build artifacts

## Architecture

### Core Structure
This is a FlutterFlow-generated Flutter app with a specific architectural pattern:

**Main Entry Point**: `lib/main.dart` initializes the app with theme configuration and GoRouter navigation.

**Page-Based Architecture**: The app follows a page-centric structure where each major screen is a separate page:
- `HomePage` - Main landing/home screen
- `LogIn` - Authentication screen  
- `VideoDetails` - Video content display
- `ChatAi` - AI chat functionality
- `HistorialPage` - History/previous content
- `DescargadosPage` - Downloads section

**Navigation System**: Uses GoRouter for declarative navigation with routes defined in `lib/flutter_flow/nav/nav.dart`. Each page widget has static `routeName` and `routePath` properties.

**Model-View Pattern**: Each page follows a consistent pattern:
- `*_widget.dart` - UI implementation (StatefulWidget)
- `*_model.dart` - Business logic and state management
- Models extend `FlutterFlowModel` for consistent lifecycle management

**FlutterFlow Framework**: Built on FlutterFlow's code generation system with:
- `lib/flutter_flow/` - Core FlutterFlow utilities and widgets
- Consistent theming through `FlutterFlowTheme`
- Custom widgets and utilities for common UI patterns
- Asset management for images, videos, fonts, and other resources in `assets/` directory

**State Management**: Uses Provider pattern with `AppStateNotifier` for global app state and individual page models for local state.

### Key Dependencies
- **go_router**: Declarative navigation
- **provider**: State management 
- **flutter_animate**: Animations
- **cached_network_image**: Image caching
- **sqflite**: Local database
- **google_fonts**: Typography
- **flutter_svg**: SVG support

### Platform Support
The app is configured for Android, iOS, and Web platforms with platform-specific configurations in respective directories.

### Asset Organization
Assets are categorized by type in the `assets/` directory:
- `images/` - Static images and logos
- `videos/` - Video content
- `audios/` - Audio files
- `fonts/` - Custom fonts
- `pdfs/` - Document files
- `jsons/` - Configuration and data files
- `rive_animations/` - Rive animation files