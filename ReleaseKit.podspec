
Pod::Spec.new do |spec|

  spec.name         = "ReleaseKit"
  spec.version      = "1.0"
  spec.summary      = "ReleaseKit"
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

  spec.default_subspec = 'CoreOnly'
  
  spec.subspec 'CoreOnly' do |ss|
    ss.source_files = 'Sources/ReleaseKit/**/*'
    ss.exclude_files = 'Sources/ReleaseKit/**/*.plist'
    
  end
end
