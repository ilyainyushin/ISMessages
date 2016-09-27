# ISMessages

This is simple extension for presenting system-wide notifications from top/bottom of device screen.

<img src="http://s20.postimg.org/pl5z3qdx9/ISMessage_Preview.gif">
<img src="http://s20.postimg.org/usmgug54t/image.png">
<img src="http://s20.postimg.org/u4dmbi6f1/image.png">

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
```objective-c
#import <ISMessages/ISMessages.h>
```
###Presenting notification

All messages can simply presented **without** customization and callback via static method call:
```objective-c
[ISMessages showCardAlertWithTitle:@"This is your title!" 
            message:@"This is your message!" 
            iconImage:nil 
            duration:3.f 
            hideOnSwipe:YES 
            hideOnTap:YES 
            alertType:ISAlertTypeSuccess 
            alertPosition:ISAlertPositionTop];
```
Message **with** customization and callback:
```objective-c
ISMessages* alert = [ISMessages cardAlertWithTitle:@"This is custom alert with callback"
                                message:@"This is your message!!"
                                iconImage:nil
                                duration:3.f
                                hideOnSwipe:YES
                                hideOnTap:YES
                                alertType:ISAlertTypeCustom
                                alertPosition:ISAlertPositionTop];
				
alert.titleLabelFont = [UIFont boldSystemFontOfSize:15.f];
alert.titleLabelTextColor = [UIColor blackColor];

alert.messageLabelFont = [UIFont italicSystemFontOfSize:13.f];
alert.messageLabelTextColor = [UIColor whiteColor];

alert.alertViewBackgroundColor = [UIColor colorWithRed:96.f/255.f 
					  green:184.f/255.f 
					  blue:237.f/255.f 
					  alpha:1.f];

[alert show:^{
    NSLog(@"Callback is working!");
}];				
```

Messages can be displayed from any location in app, even not associated with UI. 

###Hiding Messages

Notifications will hidden automatically after your duration or using static method
```objective-c
[ISMessages hideAlertAnimated:YES];
```
Also you can just tap/swipe {on} message to hide it.

##Author
Ilya Inyushin

<a href="mailto:trsaltn@yandex.ru">trsaltn@yandex.ru</a>

## License

Usage is provided under the <a href="http://opensource.org/licenses/MIT" target="_blank">MIT</a> License. See <a href="https://github.com/ilyainyushin/ISMEssages/blob/master/LICENSE">LICENSE</a> for full details.

