# BINARY pod of the closed What Is Around AR core (public what-is-around-ar-sdk repo).
# Customers add one line to ios/Podfile, inside `target 'Runner' do`:
#   pod 'WhatIsAroundARCore', :git => 'https://github.com/flyingpigs-dev/what-is-around-ar-sdk.git', :tag => '0.16.1'
# The core is a STATIC framework that does not embed ARCore: the ARCore pods below are linked into
# the host app.
Pod::Spec.new do |s|
  s.name                = 'WhatIsAroundARCore'
  s.version             = '0.16.1' # set by scripts/set_version.sh
  s.summary             = 'What Is Around AR SDK closed core (prebuilt static XCFramework).'
  s.homepage            = 'https://github.com/flyingpigs-dev/what-is-around-ar-sdk'
  s.license             = { :type => 'Proprietary', :text => 'See the What Is Around AR SDK license agreement.' }
  s.author              = { 'What Is Around' => 'flyingpigs.dev@gmail.com' }
  s.source              = { :git => 'https://github.com/flyingpigs-dev/what-is-around-ar-sdk.git', :tag => s.version.to_s }
  s.platform            = :ios, '15.0'
  s.swift_version       = '5.0'
  s.static_framework    = true
  s.vendored_frameworks = 'WhatIsAroundARCore.xcframework'
  s.dependency 'ARCore/Geospatial', '~> 1.54.0'
  s.dependency 'ARCore/CloudAnchors', '~> 1.54.0'
end
