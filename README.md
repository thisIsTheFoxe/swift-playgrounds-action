# Swift Playgrounds Action
[![GitHub Marketplace](https://img.shields.io/badge/Marketplace-v1-undefined.svg?logo=github&logoColor=white&style=flat)](https://github.com/marketplace/actions/swift-playgrounds)
[![Playgrounds CI](https://github.com/thisIsTheFoxe/swift-playgrounds-action/workflows/Playgrounds%20CI/badge.svg)](https://github.com/thisIsTheFoxe/swift-playgrounds-action/actions)

A simple GitHub action to run Swift Playgrounds.

**Important:** Make sure your '.playground' folders are in the repos root directory.

*Note:* This action will not work for '.playgroundbook's (as of now).

## Usage
```yml
name: Playgrounds CI

on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:
  run-playgrounds:
    runs-on: macos-latest

    steps:
      - uses: actions/checkout@v2
      - uses: thisisthefoxe/swift-playgrounds-action@v1
```
