Pod::Spec.new do |s|
  s.name           = 'quickblox-ios-sdk'
  s.homepage       = 'https://github.com/IamVisual/quickblox-ios-sdk.git'
  s.version        = '2.0'
  s.source         = { :git => 'https://github.com/IamVisual/quickblox-ios-sdk.git' }
  s.preserve_paths = 'Framework/Quickblox.framework'
  s.requires_arc   = true
  
  s.prefix_header_contents = '#import <Quickblox/Quickblox.h>'
    
  s.frameworks     = 'CFNetwork', 'SystemConfiguration', 'MobileCoreServices', 'CoreGraphics', 'CoreLocation', 'CoreData', 'AudioToolbox', 'CoreMedia', 'Accelerate', 'CoreVideo', 'AVFoundation', 'Security', 'libz', 'libresolv',' libxml2',' libxml2.2'
  s.libraries      = 'resolv', 'z', 'stdc++'
  s.ios.dependency   'KissXML'
  s.compiler_flags = '-ObjC'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/quickblox-ios-sdk/Framework"' }

end


