#
# Be sure to run `pod lib lint google-chromecast-sdk-dynamic-ios.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'google-chromecast-sdk-dynamic-ios'
  s.version          = '0.1.0'
  s.summary          = 'Framework for casting content to Google Cast devices (dynamically-linked version)'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Google Cast is a screen-sharing technology that lets a user send and\ncontrol content like video from a small computing device like a phone,\ntablet, or laptop to a large display device like a television.\n\nA sender application running on the sender device uses the Google Cast\nAPI appropriate to its operating system to discover and transmit to the\nreceiver application running on the receiver device. You can use the\nsender APIs to enable your iOS app to send content to a large display.\n Your use of Google Cast SDK is subject to, and by using or downloading any of\nthe related files you agree to comply with, the Google APIs Terms of Service (https://developers.google.com/terms/)\nand the Google Cast SDK Additional Developer Terms of Service (https://developers.google.com/cast/docs/terms/).\n\nStarting with 4.3.1, the google-cast-sdk pod is a (600+MB) statically-linked framework, while google-cast-sdk-dynamic is the 50+MB dynamically-linked version of the same.
                       DESC

  s.homepage         = 'https://developers.google.com/cast/'
  s.authors          = 'Google, Inc.'
  s.preserve_paths   = 'GoogleCastSDK-ios-4.7.0_dynamic/GoogleCast.framework/Modules/module.modulemap'
  s.module_map       = 'GoogleCastSDK-ios-4.7.0_dynamic/GoogleCast.framework/Modules/module.modulemap'

  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  #s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.license          = { :type => 'Commercial', :text => 'https://developers.google.com/terms/' }
  s.source           = { :http => 'https://dl.google.com/dl/chromecast/sdk/ios/GoogleCastSDK-ios-4.7.0_dynamic.zip' }

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'GoogleCastSDK-ios-4.7.0_dynamic/GoogleCast.framework/Headers/*.h'
  s.dependency   'Protobuf', '~> 3.0'
  
  # s.resource_bundles = {
  #   'google-chromecast-sdk-dynamic-ios' => ['google-chromecast-sdk-dynamic-ios/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Accelerate', 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreBluetooth', 'CoreData', 'CoreGraphics', 'CoreMedia', 'CoreText', 'Foundation', 'MediaAccessibility', 'MediaPlayer', 'QuartzCore', 'Security', 'SystemConfiguration', 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.subspec 'Core' do |cs|
    cs.name = 'Core'
    cs.source_files = 'GoogleCastSDK-ios-4.7.0_dynamic/GoogleCast.framework/Headers/*.h'
    cs.preserve_paths = 'GoogleCastSDK-ios-4.7.0_dynamic/GoogleCast.framework'
    cs.requires_arc = true
    #cs.vendored_frameworks = 'GoogleCastSDK-ios-4.7.0_dynamic/GoogleCast.framework'
    cs.libraries = 'c++'
    cs.resources =  'GoogleCastSDK-ios-4.7.0_dynamic/GoogleCast.framework/GoogleCastCoreResources.bundle', 'GoogleCastSDK-ios-4.7.0_dynamic/GoogleCast.framework/GoogleCastUIResources.bundle'      
  end
end
