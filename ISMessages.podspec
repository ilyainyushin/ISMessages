Pod::Spec.new do |s|
  s.name             = 'ISMessages'
  s.version          = '1.0.2'
  s.summary          = 'This is simple extension for presenting system-wide notifications from top/bottom of device screen.'

  s.homepage         = 'https://github.com/ilyainyushin/ISMessages'
  s.screenshots     = 'http://i.imgur.com/xOE269v.png', 'http://i.imgur.com/XAPFIAa.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ilya Inyushin' => 'trsaltn@yandex.ru' }
  s.source           = { :git => 'https://github.com/ilyainyushin/ISMessages.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/trsaltn'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ISMessages/Classes/**/*'
  
  s.resource_bundles = {
    'ISMessages' => ['ISMessages/Assets/*.png']
  }

end
