Pod::Spec.new do |s|
  s.name             = 'ISMessages'
  s.version          = '0.0.1'
  s.summary          = 'ISMessages is a beauty alerts'

  s.description      = <<-DESC
Desc..
                       DESC

  s.homepage         = 'https://github.com/ilyainyushin/ISMessages'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
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
