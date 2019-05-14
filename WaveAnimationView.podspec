Pod::Spec.new do |spec|
    spec.name         = "WaveAnimationView"
    spec.version      = "1.0.1"
    spec.summary      = "WaveAnimationView is a library to install wave progress-animation for iOS"
    spec.homepage     = "https://github.com/maniCreate/WaveAnimationView"
    spec.license      = { :type => "MIT", :file => "LICENSE" }
    spec.author       = "mani"
    spec.swift_version = "5.0"
    spec.platform     = :ios, "8.0"
    spec.source       = { :git => "https://github.com/maniCreate/WaveAnimationView.git", :tag => "#{spec.version}" }
    spec.source_files  = "WaveAnimationView/**/*.swift"
end

