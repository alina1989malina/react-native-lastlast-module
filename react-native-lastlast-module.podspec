require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-lastlast-module"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "13.4" }
  s.source       = { :git => "https://github.com/alina1989malina.git", :tag => "#{s.version}" }


  s.source_files = 'Libraries/swiftCoreNFC'
  s.ios.source_files = "ios/**/*.{h,m,mm,swift}"
  #s.ios.vendored_library = 'Libraries/swiftCoreNFC'

  #s.ios.library = 'swiftCoreNFC'
  #s.libraries = 'swiftCoreNFC'

  s.dependency "React"
  s.dependency "PromiseKit", "~> 6.8"
  end
