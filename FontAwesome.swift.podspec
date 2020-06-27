Pod::Spec.new do |spec|
    spec.name    = 'FontAwesome.swift'
    spec.version = '2.0.0-alpha'
    spec.license = { :type => 'MIT', :file => 'LICENSE.md' }
    spec.summary = "Use Font Awesome in your Swift projects"
    spec.authors = { 'Thi Doan' => 't@thi.im',
                     'Mason Phillips' => 'matrixsenpai@gmail.com' }
                     
    spec.homepage = 'https://github.com/thii/FontAwesome.swift'

    spec.source = { :git => 'https://github.com/thii/FontAwesome.swift.git',
                    :tag => spec.version.to_s }

    spec.swift_version = '5.0'
    
    spec.subspec 'Core' do |ss|
        ss.source_files = 'Sources/FACore'
        ss.ios.deployment_target = '8.0'
        ss.watchos.deployment_target = '4.0'
    end
    
    spec.subspec 'UIKit' do |ss|
        ss.source_files = 'Sources/FAUIKit'
        ss.resource_bundle = { 'FontAwesome.swift' => 'Fonts/FontAwesome/*.otf' }
        ss.dependency 'FontAwesome.swift/Core'
        ss.ios.deployment_target = '10.0'
    end
    
    spec.default_subspecs = 'Core', 'UIKit'
end
