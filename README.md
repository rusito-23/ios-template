# iOS Cookie Cutter

A [cookiecutter template](https://cookiecutter.readthedocs.io) to create iOS projects.

## Usage

1. Install CookieCutter

```
brew install cookiecutter
```

2. Clone the repository

```
git clone https://github.com/rusito-23/ios-template
```

3. Use the template

```
cookiecutter /full/path/to/ios-template
```

## Project Structure

```
{{ project_slug }}/
├── .gitignore
├── Mintfile
├── README.md
├── Shell
│   ├── Makefile
│   ├── Resources
│   │   └── .keep
│   ├── Sources
│   │   └── .keep
│   └── project.yml
└── {{ project_slug }}.xcworkspace
    └── contents.xcworkspacedata
```

## Tools

The created project will include:

- [Mint](https://github.com/yonaskolb/Mint)
- [SwiftLint](https://github.com/realm/SwiftLint)
- [XcodeGen](https://github.com/yonaskolb/XcodeGen)

## Alternatives

- [Rightpoint/ios-template](https://github.com/Rightpoint/ios-template)
