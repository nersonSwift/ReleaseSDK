
Pod::Spec.new do |spec|

  spec.name         = "ReleaseSDK"
  spec.version      = "1.0"
  spec.summary      = "ReleaseSDK"
  spec.description  = "Small example to test code sharing via cocoapods."	
  
  spec.homepage     = "https://github.com/nersonSwift/ReleaseSDK"

  spec.license      = "MIT"

  spec.author       = { 
	"nersonSwift" => "aleksandrsenin@icloud.com" 
  }
 
  spec.source       = { 
	:git => "https://github.com/nersonSwift/ReleaseSDK.git", 
	:tag => spec.name.to_s + "_v" + spec.version.to_s
  }

  spec.swift_version = '5.3'
  spec.ios.deployment_target  = '13.0'

  spec.requires_arc = true

  spec.default_subspec = 'Core'
  
  spec.subspec 'CoreOnly' do |ss|
    ss.dependency "ReleaseKit"
  end

  spec.subspec 'Core' do |ss|
    ss.dependency 'ReleaseSDK/CoreOnly'
    ss.dependency 'RelizSDK/RZUIKit'
    ss.dependency 'RelizSDK/RZStoreKit'
    ss.dependency 'RelizSDK/RZEventKit'
    ss.dependency 'RelizSDK/RZObservableKit'
  end

  spec.subspec 'RZUIKit' do |ss|
    ss.dependency 'ReleaseSDK/CoreOnly'
    ss.dependency 'RelizSDK/RZViewBuilderKit'
    ss.dependency 'RelizSDK/RZUIPacKit'
    ss.dependency 'RelizSDK/RZDarkModeKit'
  end

  spec.subspec 'RZViewBuilderKit' do |ss|
    ss.dependency 'ReleaseSDK/CoreOnly'
    ss.dependency "RZViewBuilderKit"
  end

  spec.subspec 'RZUIPacKit' do |ss|
    ss.dependency 'ReleaseSDK/CoreOnly'
    ss.dependency "RZUIPacKit"
  end

  spec.subspec 'RZDarkModeKit' do |ss|
    ss.dependency 'ReleaseSDK/CoreOnly'
    ss.dependency "RZDarkModeKit"
  end

  spec.subspec 'RZStoreKit' do |ss|
    ss.dependency 'ReleaseSDK/CoreOnly'
    ss.dependency "RZStoreKit"
  end

  spec.subspec 'RZEventKit' do |ss|
    ss.dependency 'ReleaseSDK/CoreOnly'
    ss.dependency "RZEventKit"
  end
  
  spec.subspec 'RZObservableKit' do |ss|
    ss.dependency 'ReleaseSDK/CoreOnly'
    ss.dependency "RZObservableKit"
  end

end
