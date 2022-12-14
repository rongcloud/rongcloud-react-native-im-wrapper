require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "rongcloud-react-native-im-wrapper"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/rongcloud/rongcloud-react-native-imsdk.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm}"

  s.vendored_frameworks = 'ios/Frameworks/*.xcframework'

  s.dependency "React-Core"
  s.dependency 'RongCloudIM/IMLib', '5.2.5.1'
end
