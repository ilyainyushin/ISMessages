//
//  ISMessages.h
//  ISMessages
//
//  Created by Ilya Inyushin on 08.09.16.
//  Copyright © 2016 Ilya Inyushin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ISAlertType) {
    // Green alert view with check mark image.
    ISAlertTypeSuccess = 0,
    // Red alert view with error image
    ISAlertTypeError = 1,
    // Orange alert view with warning image
    ISAlertTypeWarning = 2,
    // Light green alert with info image.
    ISAlertTypeInfo = 3
};

@interface ISMessages : UIViewController

@property (strong, nonatomic) UIImage* iconImage;
@property (assign, nonatomic) CGSize iconImageSize;

@property (assign, nonatomic) CGFloat messageLabelHeight;
@property (assign, nonatomic) CGFloat alertViewHeight;

@property (nonatomic, copy) NSString* titleString;
@property (nonatomic, copy) NSString* messageString;

@property (strong, nonatomic) UIColor* alertViewBackgroundColor;
@property (strong, nonatomic) UIColor* titleLabelTextColor;
@property (strong, nonatomic) UIColor* messageLabelTextColor;

@property (assign, nonatomic) NSTimeInterval duration;

/**
 @author Ilya Inyushin
 
 Method is show card alert view
 
 @param title Title for alert view
 @param message Subtitle for alertview, can be empty and nil
 @param iconImage image for alert. If nil then alert will show with image by alert type
 @param duration duration after which alert will dismiss
 @param hideOnSwipe YES/NO for swipe dismiss alert view
 @param hideOnTap YES/NO for tap dismiss alert view
 @param type alert type
 */

+ (instancetype)showCardAlertWithTitle:(NSString *)title
                               message:(NSString *)message
                             iconImage:(UIImage *)iconImage
                              duration:(NSTimeInterval)duration
                           hideOnSwipe:(BOOL)hideOnSwipe
                             hideOnTap:(BOOL)hideOnTap
                             alertType:(ISAlertType)type;

/**
 @author Ilya Inyushin
 
 Method is hide alert view
 
 @param animated @(YES/NO) animated hide
 */

+ (void)hideAlertAnimated:(BOOL)animated;


@end
