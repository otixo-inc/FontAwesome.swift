# FontAwesome.swift

Use Font Awesome in your Swift projects

This branch is currently in alpha stage. Some legacy code has been enabled, but is not recommended for use. Use at your own risk.

### Usage

```swift
// Create an icon
let swiftIcon: FAIcon = "fa-swift".fontAwesome
// or
let swiftIcon = FAIcon(code: "fa-swift")
// or
let swiftIcon = FAIcon["fa-swift"]

// Get the unicode value from the icon
textLabel.text = swiftIcon
```
