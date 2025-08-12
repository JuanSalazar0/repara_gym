#!/bin/bash

# Development Environment Setup Script for Repara Gym
# This script sets up the development environment with all necessary tools and configurations

set -e

echo "🚀 Setting up Repara Gym development environment..."

# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter is not installed. Please install Flutter first."
    echo "📚 Visit: https://flutter.dev/docs/get-started/install"
    exit 1
fi

# Check Flutter version
FLUTTER_VERSION=$(flutter --version | grep -o 'Flutter [0-9.]*' | cut -d' ' -f2)
echo "✅ Flutter version: $FLUTTER_VERSION"

# Install dependencies
echo "📦 Installing Flutter dependencies..."
flutter pub get

# Setup Git hooks (if not already set)
if [ ! -f .git/hooks/pre-commit ]; then
    echo "🔧 Setting up Git hooks..."
    mkdir -p .git/hooks
    
    cat > .git/hooks/pre-commit << 'EOF'
#!/bin/bash
# Pre-commit hook to ensure code quality

echo "🔍 Running pre-commit checks..."

# Format check
if ! dart format --output=none --set-exit-if-changed .; then
    echo "❌ Code formatting check failed. Run 'dart format .' to fix."
    exit 1
fi

# Analysis check
if ! flutter analyze; then
    echo "❌ Code analysis failed. Fix the issues above."
    exit 1
fi

# Test check
if ! flutter test; then
    echo "❌ Tests failed. Fix the failing tests."
    exit 1
fi

echo "✅ Pre-commit checks passed!"
EOF
    
    chmod +x .git/hooks/pre-commit
    echo "✅ Git hooks configured"
fi

# Create development branches
echo "🌿 Setting up development branches..."
git checkout -b develop 2>/dev/null || git checkout develop
git checkout -b feature/initial-setup 2>/dev/null || echo "Feature branch already exists"

# Setup development environment
echo "⚙️ Configuring development environment..."

# Create .env.example if it doesn't exist
if [ ! -f .env.example ]; then
    cat > .env.example << 'EOF'
# Environment Configuration
# Copy this file to .env and update the values

# API Configuration
API_BASE_URL=https://api.example.com
API_KEY=your_api_key_here

# Database Configuration
DB_HOST=localhost
DB_PORT=5432
DB_NAME=gym_db
DB_USER=username
DB_PASSWORD=password

# Feature Flags
ENABLE_ANALYTICS=true
ENABLE_CRASH_REPORTING=true
DEBUG_MODE=false
EOF
    echo "✅ Created .env.example"
fi

# Create development documentation
mkdir -p docs
if [ ! -f docs/development.md ]; then
    cat > docs/development.md << 'EOF'
# Development Guide

## Quick Start

1. Run the setup script: `./scripts/setup_dev.sh`
2. Install dependencies: `flutter pub get`
3. Run the app: `flutter run`

## Development Workflow

1. Create feature branch: `git checkout -b feature/your-feature`
2. Make changes and test locally
3. Commit following conventions: `git commit -m "feat: add new feature"`
4. Push and create PR to develop branch

## Testing

- Run tests: `flutter test`
- Run with coverage: `flutter test --coverage`
- Format code: `dart format .`
- Analyze code: `flutter analyze`

## Building

- Android: `flutter build apk --release`
- iOS: `flutter build ios --release`
- Web: `flutter build web --release`
EOF
    echo "✅ Created development documentation"
fi

echo ""
echo "🎉 Development environment setup complete!"
echo ""
echo "📋 Next steps:"
echo "1. Update .env.example with your configuration"
echo "2. Copy .env.example to .env"
echo "3. Run 'flutter run' to start development"
echo "4. Follow the development workflow in docs/development.md"
echo ""
echo "🔗 Useful commands:"
echo "- flutter doctor (check environment)"
echo "- flutter test (run tests)"
echo "- dart format . (format code)"
echo "- flutter analyze (analyze code)"
echo ""
echo "Happy coding! 🚀" 