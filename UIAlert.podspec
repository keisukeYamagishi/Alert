#
#  Be sure to run `pod spec lint UIAlert.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "UIAlert"
  spec.version      = "1.0.0"
  spec.summary      = "Using UIAlert is easy way"
  spec.description  = <<-DESC
                      Alert is a simple way to call UIAlertController. 
                   DESC

  spec.homepage     = "https://github.com/keisukeYamagishi/Alert"
  spec.license      = "MIT"
  spec.author             = { "keisukeYamagishi" => "jam330257@gmail.com" }
  spec.source       = { :git => "https://github.com/keisukeYamagishi/Alert.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target = '11.0'
  spec.swift_version = '5.0'
  spec.source_files = "Alert", "Alert/*.swift"
end
