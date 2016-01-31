# BenchFactory
Solar Bench Dubrovnik

## Installation
You can install framework by using Carthage package manager. Add following to your Cartfile:
```shell
github "cityos/BenchFactory"
```
and then run 
```shell
$ carthage update --platform ios
```
This will build add dependencies and place the frameworks inside Carthage/Build/iOS folder. After building add all dependencies to your project **Embededded Libaries** and **Lined Frameworks and Libraries**.

Use import stament to import framework:
```swift
import BenchFactory
```
