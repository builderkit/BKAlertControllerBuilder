# BKAlertControllerBuilder
<!--
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://paypal.me/jinxiaolong) -->

Composing `UIAlertController` with SwiftUI-style syntax, powered by the now pitching [Function Builder](https://forums.swift.org/t/function-builders/25167).

Project Link: [https://github.com/builderkit/BKAlertControllerBuilder](https://github.com/builderkit/BKAlertControllerBuilder)

## Features

|      | Features                                        |
| ---- | ----------------------------------------------- |
| 🐦    | Open source library written in Swift 5.1        |
| 🍬    | SwiftUI-like syntax, supports if-else / ForEach |
| 💪    | Support  `.alert` and `.actionSheet`            |
| 📦    | Distribution with Swift Package Manager         |
| 🧪    | Fully tested code                               |

## How to use?

Traditionally we compose a `UIAlertController` like this:

```Swift
let greeting = false
let alert = UIAlertController(title: "title", message: "message", preferredStyle: .alert)
alert.addAction(.init(title: "Cancel", style: .cancel, handler: nil))
if greeting {
    alert.addAction(.init(title: "Hello", style: .default, handler: nil))
} else {
    alert.addAction(.init(title: "World", style: .default, handler: nil))
}
present(alert, animated: true, completion: nil)
```

Now, with **XLAttributedString**, we can use SwiftUI-like syntax to declare `NSAttributedString`:

```Swift
let greeting = false
UIAlertController(title: "title", message: "message", preferredStyle: .alert) {
    Action.cancel("Cancel")
    if greeting {
        Action.default("Hello", handler: nil)
    } else {
        Action.default("World", handler: nil)
    }
}.presented(by: self, animated: true)
```

## Requirements

Xcode 11. This project uses Swift 5.1 feature [Function Builder](https://forums.swift.org/t/function-builders/25167).

## Installation

### Swift Package

Open your project in Xcode 11, navigate to **Menu -> Swift Packages -> Add Package Dependency** and enter [https://github.com/builderkit/BKAlertControllerBuilder](https://github.com/builderkit/BKAlertControllerBuilder) to install.

### CocoaPods

Add `pod 'BKAlertControllerBuilder'` to your `Podfile`.

## Demo App

Open ***BKAttributedStringBuilder.xcworkspace*** and run `BKAttributedStringBuilderDemoApp` target. 

