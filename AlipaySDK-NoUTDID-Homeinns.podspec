#
# Be sure to run `pod lib lint AlipaySDK-NoUtdid-Homeinns.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'AlipaySDK-NoUTDID-Homeinns'
    s.version          = '15.8.03'
    s.summary          = '支付宝iOS SDK，未包含阿里百川 SDK；解决构建时可能发生utdid 库相关的冲突'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description  = <<-DESC
    支付宝iOS SDK，未包含阿里百川 SDK；解决构建时可能发生utdid 库相关的冲突
    15.8.03
    更新日期：2021-04-29
    
    跳转支付宝稳定性优化。
    DESC
    s.homepage         = 'https://github.com/showchi/AlipaySDK-NoUTDID-Homeinns'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'shouzhi' => 'shouzhi2011@gmail.com' }
    s.source           = { :git => 'https://github.com/showchi/AlipaySDK-NoUTDID-Homeinns.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '9.0'
    #     s.source_files = 'AlipaySDK-NoUtdid-Homeinns/Classes/**/*'
    
    # s.resource_bundles = {
    #   'AlipaySDK-NoIDFA-Homeinns' => ['AlipaySDK-NoIDFA-Homeinns/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation', 'CFNetwork', 'CoreMotion', 'WebKit'
    s.libraries = 'z', 'c++'
    s.resource = 'AlipaySDK-NoUTDID-Homeinns/AlipaySDK.bundle'
    s.vendored_frameworks = 'AlipaySDK-NoUTDID-Homeinns/AlipaySDK.framework'
    s.requires_arc = true
    s.dependency 'UTDID'
    
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
