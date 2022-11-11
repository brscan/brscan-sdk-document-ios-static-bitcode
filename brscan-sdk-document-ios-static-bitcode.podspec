Pod::Spec.new do |s|  
    s.name              = 'brscan-sdk-document-ios-static-bitcode'
    s.version           = '1.9.4'
    s.summary           = 'Framework em IOS para captura de documento.'
    s.homepage          = 'https://github.com/brscan/brscan-sdk-document-ios-static-bitcode'

    s.author            = { 'Alan Soares de Oliveira' => 'alan.oliveira19@fatec.sp.gov.br'}
    s.license           = 'MIT'

    s.platform          = :ios
    s.source            = { :git => 'https://github.com/brscan/brscan-sdk-document-ios-static-bitcode.git', :tag => s.version.to_s }

    s.resource_bundles = {
     'brscan-sdk-documento-ios-resources' => ['resources/*/*.{png,ttf,plist}'] 
    }

    s.ios.deployment_target = '11.0'
    s.ios.vendored_frameworks = 'brscan_sdk_documento_ios.framework'
    s.vendored_libraries = 'swiftsimd.a'

    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
	
    s.dependency 'GoogleMLKit/ObjectDetection','2.6.0'
end 
