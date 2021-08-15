Pod::Spec.new do |s|
  s.name             = "TSLogEvent"
  s.version          = "1.0.9"
  s.summary          = "Event Log framework for iOS."
  s.homepage         = "https://github.com/jindalpatel/ExampleXCTest"
  s.license          = 'MIT license'
  s.author           = { "Claus, Andrew" => "andrewclaus@amrock.com" }
  s.source           = { :git => "https://github.com/jindalpatel/ExampleXCTest.git", :branch => "main" }

  s.platform     = :ios, '12.0'
  s.swift_version = '5.0'

  s.static_framework = true

  s.source_files = s.name + "/**/*.{h,m,swift}"
  
  #uncomment these lines to get this CocoaPod to validate
  #s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  #s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  #uncomment this line to use the SplunkMint.framework found locally in the project
  s.vendored_frameworks = "SplunkMint.xcframework"
  s.frameworks = [
    "SystemConfiguration",
    "CoreTelephony",
    "WebKit",
    "CoreLocation"
  ]
  s.libraries = "z"

  #s.public_header_files = "module.modulemap"
  #s.module_map = "module.modulemap"
  #s.preserve_path = "module.modulemap"
  #s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/TSLogEvent/Framework/SplunkMint.xcframework/ios-arm64_armv7/Headers/**.h' }
  #s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/TSLogEvent/Framework/SplunkMint.xcframework/**.h'}

  #uncomment this line to use SplunkMint 5.2.7 from CocoaPods
  #s.dependency 'SplunkMint', '5.2.7'

end
