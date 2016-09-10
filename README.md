# ISMessages

This is simple extension for presenting system-wide notifications from top of device screen.

<img src="http://i.imgur.com/6auwGhT.gif">
<img src="http://i.imgur.com/xOE269v.png">
<img src="http://i.imgur.com/XAPFIAa.png">

## Requirements

- Requires iOS 8 or later
- Requires Automatic Reference Counting (ARC)

##Features

- Simple use actions
- Call from anywhere in app

## Installation

### CocoaPods
To install ISMessages using CocoaPods, please integrate it in your existing Podfile, or create a new Podfile:

```ruby
target 'MyApp' do
  pod 'ISMessages'
end
```
Then run `pod install`.

### Manual

Add ISMessages folder to your project 


##Usage

	#import <ISMessages/ISMessages.h>

###Presenting notification

All messages can simply presented via static method call:
```objc
[ISMessages showCardAlertWithTitle:@"This is your title!" 
            message:@"This is your message!" 
            iconImage:nil 
            duration:3.f 
            hideOnSwipe:YES 
            hideOnTap:YES 
            alertType:ISAlertTypeSuccess];
```

Messages can be displayed from any location in app, even not associated with UI. 

###Hiding Messages

Notifications will hidden automatically after your duration or using static method
```objc
[ISMessages hideAlertAnimated:YES];
```
Also you can just tap/swipe {on} message to hide it.

##Author
Ilya Inyushin

<a href="mailto:trsaltn@yandex.ru">trsaltn@yandex.ru</a>

## License

Usage is provided under the <a href="http://opensource.org/licenses/MIT" target="_blank">MIT</a> License. See <a href="https://github.com/ilyainyushin/ISMEssages/blob/master/LICENSE">LICENSE</a> for full details.

