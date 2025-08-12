# Contributing to Repara Gym

Thank you for your interest in contributing to Repara Gym! This document provides guidelines and information for contributors.

## 🚀 Quick Start

1. **Fork** the repository
2. **Clone** your fork locally
3. **Create** a feature branch
4. **Make** your changes
5. **Test** your changes
6. **Commit** following our conventions
7. **Push** to your fork
8. **Create** a pull request

## 📋 Development Workflow

### 1. Setup Development Environment

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/repara_gym.git
cd repara_gym

# Add upstream remote
git remote add upstream https://github.com/ORIGINAL_OWNER/repara_gym.git

# Install dependencies
flutter pub get
```

### 2. Branch Strategy

We follow the [Git Flow](https://nvie.com/posts/a-successful-git-branching-model/) branching model:

- **`main`** - Production-ready code
- **`develop`** - Integration branch for features
- **`feature/*`** - Feature development branches
- **`hotfix/*`** - Critical production fixes
- **`release/*`** - Release preparation

### 3. Creating Feature Branches

```bash
# Always start from develop
git checkout develop
git pull upstream develop

# Create feature branch
git checkout -b feature/your-feature-name
```

### 4. Development Process

1. **Code**: Implement your feature/fix
2. **Test**: Write/update tests
3. **Format**: Ensure code formatting
4. **Analyze**: Run static analysis
5. **Commit**: Follow commit conventions

### 5. Committing Changes

We use [Conventional Commits](https://www.conventionalcommits.org/):

```bash
# Format: type(scope): description
git commit -m "feat(auth): add user authentication system"
git commit -m "fix(ui): resolve button alignment issue"
git commit -m "docs(readme): update installation instructions"
```

**Commit Types:**
- `feat`: New features
- `fix`: Bug fixes
- `docs`: Documentation
- `style`: Code style changes
- `refactor`: Code refactoring
- `perf`: Performance improvements
- `test`: Adding/updating tests
- `build`: Build system changes
- `ci`: CI/CD changes
- `chore`: Maintenance tasks

### 6. Pushing and Creating PRs

```bash
# Push to your fork
git push origin feature/your-feature-name

# Create pull request on GitHub
# Target: develop branch
# Title: Follow conventional commit format
# Description: Use PR template
```

## 🧪 Testing Guidelines

### Running Tests

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Run specific test file
flutter test test/widget_test.dart

# Run tests in watch mode
flutter test --watch
```

### Writing Tests

- **Unit Tests**: Test individual functions and classes
- **Widget Tests**: Test UI components
- **Integration Tests**: Test app workflows
- **Coverage**: Aim for >80% code coverage

### Test Structure

```
test/
├── unit/           # Unit tests
├── widget/         # Widget tests
├── integration/    # Integration tests
└── helpers/        # Test utilities
```

## 📏 Code Standards

### Dart/Flutter Standards

- Follow [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
- Use [Flutter Style Guide](https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo)
- Maximum line length: 80 characters
- Use meaningful variable and function names

### Code Formatting

```bash
# Format all Dart files
dart format .

# Check formatting without changes
dart format --output=none --set-exit-if-changed .
```

### Static Analysis

```bash
# Run analysis
flutter analyze

# Fix auto-fixable issues
dart fix --apply
```

## 🔄 Pull Request Process

### PR Requirements

- [ ] Code follows style guidelines
- [ ] Tests pass locally
- [ ] New tests added for new functionality
- [ ] Documentation updated
- [ ] Commit messages follow conventions
- [ ] Branch is up to date with develop

### PR Template

Use the provided PR template when creating pull requests. Include:

1. **Description**: What does this PR do?
2. **Type**: Feature, bug fix, documentation, etc.
3. **Testing**: How was this tested?
4. **Screenshots**: If UI changes
5. **Checklist**: Ensure all requirements met

### Code Review Process

1. **Automated Checks**: CI/CD pipeline runs
2. **Review Request**: Assign reviewers
3. **Feedback**: Address review comments
4. **Approval**: Get required approvals
5. **Merge**: Merge after approval

## 🚀 Release Process

### Version Bumping

1. **Update Version**: Modify `pubspec.yaml`
2. **Create Tag**: Use semantic versioning
3. **Push Tag**: Triggers automated release
4. **Verify**: Check release artifacts

```bash
# Update version in pubspec.yaml
# Create and push tag
git tag v1.0.0
git push origin v1.0.0
```

### Semantic Versioning

- **MAJOR**: Breaking changes
- **MINOR**: New features (backward compatible)
- **PATCH**: Bug fixes (backward compatible)

## 🐛 Issue Reporting

### Bug Reports

- **Title**: Clear, descriptive title
- **Description**: Detailed problem description
- **Steps**: Reproducible steps
- **Expected**: Expected behavior
- **Actual**: Actual behavior
- **Environment**: OS, Flutter version, device
- **Screenshots**: If applicable

### Feature Requests

- **Title**: Clear feature description
- **Description**: Detailed feature explanation
- **Use Case**: Why is this needed?
- **Mockups**: UI/UX mockups if applicable

## 📚 Documentation

### Code Documentation

- Document public APIs
- Use clear, concise comments
- Include examples for complex functions
- Keep documentation up to date

### Project Documentation

- Update README.md for major changes
- Document new features
- Update setup instructions
- Maintain changelog

## 🤝 Community Guidelines

### Communication

- Be respectful and inclusive
- Use clear, constructive language
- Ask questions when unsure
- Help other contributors

### Code of Conduct

- Follow [Contributor Covenant](https://www.contributor-covenant.org/)
- Report violations to maintainers
- Maintain professional environment

## 🆘 Getting Help

### Resources

- **Documentation**: Check README and docs/
- **Issues**: Search existing issues
- **Discussions**: Use GitHub Discussions
- **Chat**: Join community channels

### Questions

- Search existing issues first
- Use GitHub Discussions for questions
- Tag maintainers for urgent issues
- Provide context and details

## 🎯 Contribution Areas

### High Priority

- Bug fixes
- Performance improvements
- Test coverage
- Documentation updates

### Medium Priority

- New features
- UI/UX improvements
- Code refactoring
- Tooling improvements

### Low Priority

- Nice-to-have features
- Experimental features
- Documentation polish

## 📈 Recognition

### Contributors

- All contributors listed in README
- Special recognition for major contributions
- Contributor badges and mentions
- Thank you in release notes

### Guidelines

- Credit original authors
- Respect existing code structure
- Build on previous work
- Share knowledge with community

---

Thank you for contributing to Repara Gym! Your contributions help make this project better for everyone. 