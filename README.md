# SwiftUIButton
An introduction to handling SwiftUI Buttons! ⬇️

## Setup

Add the following to `Package.swift`:

```swift
.package(url: "https://github.com/stateman92/SwiftUIButton", exact: .init(0, 0, 2))
```

[Or add the package in Xcode.](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app)

## Usage

```swift
Button {
    print("The button is tapped!")
} label: {
    Text("Tap me!")
}
.buttonStyle(BaseButtonStyle(icon: .leading(.init(systemName: "circle")),
                             size: .normal(cornerRadius: 15),
                             theme: DefaultButtonTheme()))
```

For details see the Example app.

## Example

<p style="text-align:center;"><img src="https://github.com/stateman92/SwiftUIButton/blob/main/Resources/screenshot.png?raw=true" width="50%" alt="Example"></p>
