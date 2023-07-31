Pod::Spec.new do |s|
  s.name                = 'TuSDKPulse'
  s.version             = '4.0.0'
  s.summary             = 'TuSDK for iOS'
  s.homepage            = 'https://tutucloud.com/'
  s.license             = { :type => 'Commercial', :text => '© 2014–2023 TUTUCLOUD Technology Co., Ltd.' }
  s.author              = { 'TuSDK Team' => 'support@tusdk.com' }
  s.platform            = :ios, '11.0'
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '$(inherited) -ObjC', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.source              = { :git => "https://github.com/TuSDK/TuSDKPulse-for-iOS.git", :tag => "#{s.version}" }
  s.requires_arc        = true


  s.subspec 'Core' do |c|
    c.vendored_frameworks = ["TuSDKPulse.framework", "TuSDKPulseCore.framework"]
  end

  s.subspec 'Eva' do |i| 
    i.vendored_frameworks = 'TuSDKPulseEva.framework'
  end

  s.subspec 'Editor' do |i| 

    i.vendored_frameworks = 'TuSDKPulseEditor.framework'
  end 

  s.subspec 'Filter' do |i| 
    i.vendored_frameworks = 'TuSDKPulseFilter.framework'
  end

  s.subspec 'Camera' do |i| 
    i.vendored_frameworks = 'TuCamera.framework'
  end

  s.subspec 'Views' do |i| 
    i.vendored_frameworks = 'TuViews.framework'
  end

  s.subspec 'ImageGeeV1' do |i|
    i.vendored_frameworks = 'TuSDKGeeV1.framework'
  end

  s.subspec 'ImageGeeV2' do |i|
    i.vendored_frameworks = 'TuSDKGeeV2.framework'
  end

end
