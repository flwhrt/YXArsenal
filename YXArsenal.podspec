Pod::Spec.new do |s|
  s.name         = "YXArsenal"
  s.version      = "0.0.5"
  s.summary      = "tool for ios app development."
  s.homepage     = "https://github.com/flwhrt/YXArsenal"
  s.license      = "MIT"
  s.author             = { "flwhrt" => "flwhrt@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/flwhrt/YXArsenal.git", :tag => "v#{s.version}" }
  s.source_files  = "YXArsenal/*.{h,m}"
  s.ios.frameworks = 'Foundation', 'UIKit'

  s.requires_arc = true

end
