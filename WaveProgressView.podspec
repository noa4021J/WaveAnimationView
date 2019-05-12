#
#  Be sure to run `pod spec lint WaveProgressView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "WaveProgressView"
  spec.version      = "1.0.1"
spec.summary      = "WaveProgressView is a library to install wave progress-animation for iOS"
  spec.homepage     = "https://github.com/maniCreate/WaveProgressView"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "maniCreate" => "aion1998@yahoo.co.jp" }
  spec.swift_version = "5.0.1"
  spec.platform     = :ios, "12.2"
  spec.source       = { :git => "http://EXAMPLE/WaveProgressView.git", :tag => "#{spec.version}" }
  spec.source_files  = "WaveProgressView/**/*.{h,m}"
end
