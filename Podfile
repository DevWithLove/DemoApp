
platform :ios, '9.0'
use_frameworks!

def demoApp_shared_pods
  pod 'SlideMenuControllerSwift'
  pod 'SwiftDate', '~> 4.0'
  pod 'PromiseKit', '~> 6.0'
  pod 'RealmSwift'
  pod 'Alamofire', '~> 4.6.0'
  pod 'AlamofireObjectMapper', '~> 5.0'
end


target 'DemoApp' do

  # Pods for DemoApp
  demoApp_shared_pods

  target 'DemoAppTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'DemoAppUITests' do
    inherit! :search_paths
  end

end
