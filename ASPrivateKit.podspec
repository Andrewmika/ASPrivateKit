#
# Be sure to run `pod lib lint ASPrivateKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ASPrivateKit'
  s.version          = '0.1.0'
  s.summary          = '工具类'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
开发过程中不断沉淀的工具类，持续更新
                       DESC

  s.homepage         = 'https://github.com/Andrewmika/ASPrivateKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Andrewmika' => 'iandrew@126.com' }
  s.source           = { :git => 'https://github.com/Andrewmika/ASPrivateKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ASPrivateKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ASPrivateKit' => ['ASPrivateKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.subspec 'UIExtension' do |ui|
      ui.source_files = 'ASPrivateKit/Classes/UIExtension/**/*'
      ui.dependency 'Masonry'
  end
  s.subspec 'Utility' do |ut|
      ut.source_files = 'ASPrivateKit/Classes/Utility/**/*'
  end
end
