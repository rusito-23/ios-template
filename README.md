# iOS Cookie Cutter

A [cookiecutter template](https://cookiecutter.readthedocs.io) to create iOS projects.

## Get Started

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
├── Makefile
├── Mintfile
├── README.md
├── Shell
│   ├── Resources
│   │   └── ...
│   └── Sources
│       └── ...
├── project.yml
└── {{ project_slug }}.xcworkspace
    └── contents.xcworkspacedata
```

## Module Template

The [module-template](./module-template) will create a new Swift Package module with the given name, but it won't be added to the workspace
or as dependency to any target. This needs to be done manually after creation.

## Tools

The created project will include:

- [Mint](https://github.com/yonaskolb/Mint)
- [SwiftLint](https://github.com/realm/SwiftLint)
- [XcodeGen](https://github.com/yonaskolb/XcodeGen)

## Alternatives

- [Rightpoint/ios-template](https://github.com/Rightpoint/ios-template)
