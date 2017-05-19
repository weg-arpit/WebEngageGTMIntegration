#
#  Be sure to run `pod spec lint WebEngageGTMIntegration.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

s.name         = "WebEngageGTMIntegration"
s.version      = "1.0.0"
s.summary      = "WebEngage implementation of Google Tag Manager"
s.description  = "Integrates WebEngage SDK to leverage GTM tags and Firebase APIs with pre defined tags for WebEngage"
s.homepage     = "http://docs.webengage.com"

s.license = { :type => "MIT", :file => "LICENSE" }

s.platform     = :ios, "8.0"

s.author = { "Saumitra R. Bhave" => "saumitra.bhave@gmail.com",
             "Arpit Agrawal" => "arpit@webklipper.com" }
s.social_media_url = "http://twitter.com/webengage"

s.source = { :git => "https://github.com/weg-arpit/WebEngageGTMIntegration.git", :tag => "1.0.0" }

s.requires_arc = true

s.subspec 'Xcode7' do |xc7|
  xc7.source_files = "xc7/WebEngageGTMIntegration.framework/Headers/*.h"
  xc7.public_header_files = "xc7/WebEngageGTMIntegration.framework/Headers/*.h"
  xc7.ios.vendored_frameworks = "xc7/WebEngageGTMIntegration.framework"
end

s.subspec 'Xcode8' do |xc8|
  xc8.source_files = "xc8/WebEngageGTMIntegration.framework/Headers/*.h"
  xc8.public_header_files = "xc8/WebEngageGTMIntegration.framework/Headers/*.h"
  xc8.ios.vendored_frameworks = "xc8/WebEngageGTMIntegration.framework"
  xc8.weak_framework = 'UserNotifications'
end

s.default_subspec = 'Xcode8'

s.dependency 'WebEngage', '~> 3.5.2'
s.dependency 'GoogleTagManager', '~> 5.0'
end