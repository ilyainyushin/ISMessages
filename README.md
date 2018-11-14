# ISMessages
[![Version](https://img.shields.io/github/release/ilyainyushin/ISMessages.svg)](https://github.com/ilyainyushin/ISMessages/releases/latest/)
[![CocoaPods](https://img.shields.io/cocoapods/v/ISMessages.svg)](https://cocoapods.org/pods/ISMessages)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/ilyainyushin/ISMessages/master/LICENSE)

<p align="center">This is simple extension for presenting system-wide notifications from top/bottom of device screen.</p>

<p align="center"> 
<img src="https://i.imgur.com/EJn2r0u.png"><img src="https://i.imgur.com/EbSHVOL.png">
</p>


## Requirements

- Requires iOS 8.2 or later
- Requires Automatic Reference Counting (ARC)

## Features

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


### Usage
```objective-c
#import <ISMessages/ISMessages.h>
```
### Presenting notification

All messages can simply presented **without** customization and callback action via static method call:
```objective-c
[ISMessages showCardAlertWithTitle:@"This is your title!" 
            message:@"This is your message!"  
            duration:3.f 
            hideOnSwipe:YES 
            hideOnTap:YES 
            alertType:ISAlertTypeSuccess 
            alertPosition:ISAlertPositionTop 
	    	didHide:^(BOOL finished) {
               NSLog(@"Alert did hide.");
            }];
```
Message **with** customization and callback action:
```objective-c
ISMessages* alert = [ISMessages cardAlertWithTitle:@"This is custom alert with callback"
                                message:@"This is your message!!"
                                iconImage:[UIImage imageNamed:@"Icon-40"]
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
} didHide:^(BOOL finished) {
     NSLog(@"Custom alert without image did hide.");
}];				
```

Messages can be displayed from any location in app, even not associated with UI. 

### Hiding Messages

Notifications will hidden automatically after your duration or using static method
```objective-c
[ISMessages hideAlertAnimated:YES];
```
Also you can just tap/swipe {on} message to hide it.

## Author
Ilya Inyushin

- <a href="mailto:trsaltn@yandex.ru">trsaltn@yandex.ru</a>
- <a href="http://twitter.com/trsaltn">Twitter</a>
- <a href="http://github.com/ilyainyushin">GitHub</a>

## License

Usage is provided under the <a href="http://opensource.org/licenses/MIT" target="_blank">MIT</a> License. See <a href="https://github.com/ilyainyushin/ISMEssages/blob/master/LICENSE">LICENSE</a> for full details.

