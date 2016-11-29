//
//  ISMessages.h
//  ISMessages
//
//  Created by Ilya Inyushin on 08.09.16.
//  Copyright © 2016 Ilya Inyushin. All rights reserved.
//

#import <UIKit/UIKit.h>

// Callback blocks
typedef void(^handler)(void);
typedef void(^completion)(BOOL finished);

typedef NS_ENUM(NSInteger, ISAlertType) {
    // Green alert view with check mark image.
    ISAlertTypeSuccess = 0,
    // Red alert view with error image
    ISAlertTypeError = 1,
    // Orange alert view with warning image
    ISAlertTypeWarning = 2,
    // Light green alert with info image.
    ISAlertTypeInfo = 3,
    // Custom alert, default - info image and light blue background color
    ISAlertTypeCustom = 4
};

typedef NS_ENUM(NSInteger, ISAlertPosition) {
    // Alert will show from top
    ISAlertPositionTop = 0,
    // Alert will show from bottom
    ISAlertPositionBottom = 1
};

@interface ISMessages : UIViewController

@property (strong, nonatomic) UIColor* alertViewBackgroundColor;

@property (strong, nonatomic) UIColor* titleLabelTextColor;
@property (strong, nonatomic) UIColor* messageLabelTextColor;
@property (strong, nonatomic) UIFont* titleLabelFont;
@property (strong, nonatomic) UIFont* messageLabelFont;

/**
 @author Ilya Inyushin
 
 Method is show card alert view
 
 @param title Title for alert view
 @param message Subtitle for alertview, can be empty and nil
 @param duration duration after which alert will dismiss
 @param hideOnSwipe YES/NO for swipe dismiss alert view
 @param hideOnTap YES/NO for tap dismiss alert view
 @param type alert type
 @param position alert position
 @param didHide completion block when notification did hide.
 */

+ (instancetype)showCardAlertWithTitle:(NSString *)title
                               message:(NSString *)message
                              duration:(NSTimeInterval)duration
                           hideOnSwipe:(BOOL)hideOnSwipe
                             hideOnTap:(BOOL)hideOnTap
                             alertType:(ISAlertType)type
                         alertPosition:(ISAlertPosition)position
                               didHide:(completion)didHide;

/**
 @author Ilya Inyushin
 
 Only Initialize ISMessages and you can customize alert, to show alert you need call method [show]
 
 @param title Title for alert view
 @param message Subtitle for alertview, can be empty and nil
 @param iconImage image for alert. If nil then alert will show with image by alert type
 @param duration duration after which alert will dismiss
 @param hideOnSwipe YES/NO for swipe dismiss alert view
 @param hideOnTap YES/NO for tap dismiss alert view
 @param type alert type
 @param position alert position
 */

+ (instancetype)cardAlertWithTitle:(NSString*)title
                           message:(NSString*)message
                         iconImage:(UIImage*)iconImage
                          duration:(NSTimeInterval)duration
                       hideOnSwipe:(BOOL)hideOnSwipe
                         hideOnTap:(BOOL)hideOnTap
                         alertType:(ISAlertType)type
                     alertPosition:(ISAlertPosition)position;

/**
 @author Ilya Inyushin
 
 handler is callback block
 */

- (void)show:(handler)handler didHide:(completion)didHide;

/**
 @author Ilya Inyushin
 
 Method is hide alert view
 
 @param animated @(YES/NO) animated hide
 */

+ (void)hideAlertAnimated:(BOOL)animated;


@end
