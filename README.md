# what-is-around-ar-sdk

Compiled binaries of the **What Is Around AR SDK** native core. No source code lives here.

You don't use this repository directly: the [`what_is_around_ar_core`](https://pub.dev/packages/what_is_around_ar_core)
Flutter package uses these files when your app builds. The SDK only works with a license key;
contact flyingpigs.dev@gmail.com.

| Platform | Artifact | Used through |
|---|---|---|
| iOS | `WhatIsAroundARCore.xcframework` (static, stripped, no dSYMs; links ARCore from the ARCore pods) | CocoaPods (`WhatIsAroundARCore.podspec`) |
| Android | `maven/com/whatisaround/ar/ar-core/<version>/` (R8-obfuscated AAR; ARCore as a Maven dependency) | Gradle, via GitHub Pages: `https://flyingpigs-dev.github.io/what-is-around-ar-sdk/maven` |

iOS apps add one line to `ios/Podfile`, inside `target 'Runner' do`:

```ruby
pod 'WhatIsAroundARCore', :git => 'https://github.com/flyingpigs-dev/what-is-around-ar-sdk.git', :tag => '0.16.0'
```

Android needs nothing: the plugin's Gradle file adds the Maven repository above.

Use of these binaries is governed by the What Is Around AR SDK license agreement (see the
`what_is_around_ar_core` package). This repository is written by the release pipeline only.
