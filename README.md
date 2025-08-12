# Repara Gym

A Flutter-based fitness application built with modern development practices and CI/CD principles.

## 🚀 Features

- Cross-platform fitness app (iOS & Android)
- Web application support
- Video content and AI chat functionality
- Modern Flutter architecture with FlutterFlow
- Comprehensive testing suite
- Automated CI/CD pipeline

## 🛠️ Development Setup

### Prerequisites

- Flutter SDK 3.24.5 or higher
- Dart SDK
- Android Studio / Xcode (for mobile development)
- VS Code (recommended)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/repara_gym.git
   cd repara_gym
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## 📱 Building for Different Platforms

### Android
```bash
flutter build apk --release
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

### Web
```bash
flutter build web --release
```

## 🧪 Testing

Run the test suite:
```bash
flutter test --coverage
```

View coverage report:
```bash
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```

## 📋 Development Guidelines

### Commit Convention

We follow [Conventional Commits](https://www.conventionalcommits.org/) for consistent commit messages:

- `feat:` New features
- `fix:` Bug fixes
- `docs:` Documentation changes
- `style:` Code style changes
- `refactor:` Code refactoring
- `perf:` Performance improvements
- `test:` Adding or updating tests
- `build:` Build system changes
- `ci:` CI/CD changes
- `chore:` Maintenance tasks

### Branch Strategy

- `main` - Production-ready code
- `develop` - Development branch
- `feature/*` - Feature branches
- `hotfix/*` - Hotfix branches
- `release/*` - Release preparation branches

### Pull Request Process

1. Create a feature branch from `develop`
2. Make your changes following the commit convention
3. Write/update tests
4. Ensure all CI checks pass
5. Create a pull request to `develop`
6. Get code review approval
7. Merge after approval

## 🔄 CI/CD Pipeline

### Continuous Integration

Our CI pipeline runs on every push and pull request:

- **Code Quality**: Formatting, linting, and analysis
- **Testing**: Unit tests with coverage reporting
- **Building**: Multi-platform builds (Android, iOS, Web)
- **Artifacts**: Build outputs are stored as artifacts

### Continuous Deployment

- **Releases**: Automatic release creation on tag push
- **Versioning**: Semantic versioning (SemVer)
- **Artifacts**: Release builds for all platforms

### Workflow Triggers

- **CI**: Triggers on push to `main`/`develop` and PRs
- **Release**: Triggers on version tags (e.g., `v1.0.0`)

## 📊 Code Quality

- **Dart Analysis**: Static analysis with `flutter analyze`
- **Code Formatting**: Automatic formatting with `dart format`
- **Test Coverage**: Minimum coverage requirements enforced
- **Linting**: Consistent code style enforcement

## 🚀 Release Process

1. **Version Bump**: Update version in `pubspec.yaml`
2. **Create Tag**: Create and push a version tag
   ```bash
   git tag v1.0.0
   git push origin v1.0.0
   ```
3. **Automated Release**: GitHub Actions automatically creates a release
4. **Deployment**: Release artifacts are available for download

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Ensure all tests pass
6. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

- **Issues**: [GitHub Issues](https://github.com/yourusername/repara_gym/issues)
- **Discussions**: [GitHub Discussions](https://github.com/yourusername/repara_gym/discussions)
- **Documentation**: Check the `docs/` folder for detailed guides

## 🔗 Links

- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Flutter Testing](https://flutter.dev/docs/testing)
- [GitHub Actions](https://docs.github.com/en/actions)