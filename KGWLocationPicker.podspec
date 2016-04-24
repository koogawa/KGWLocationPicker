#
# Be sure to run `pod lib lint KGWLocationPicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "KGWLocationPicker"
  s.version          = "0.1.0"
  s.summary          = "Simple location picker with a built in maps."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Simple location picker with a built in maps. The selected item can be returned to the calling controller as a CLLocationCoordinate2D.
                       DESC

  s.homepage         = "https://github.com/koogawa/KGWLocationPicker"
  # s.screenshots     = "https://github.com/koogawa/KGWLocationPicker/blob/master/demo.gif"
  s.license          = 'MIT'
  s.author           = { "koogawa" => "koogawa.app@gmail.com" }
  s.source           = { :git => "https://github.com/koogawa/KGWLocationPicker.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/koogawa'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KGWLocationPicker/*'
  s.resource_bundles = {
    'KGWLocationPicker' => ['KGWLocationPicker/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'CoreLocation', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
