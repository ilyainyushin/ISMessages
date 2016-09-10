//
//  ISMessages.h
//  ISMessagesDemo
//
//  Created by Ilya Inyushin on 08.09.16.
//  Copyright © 2016 Ilya Inyushin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ISAlertType) {
    ISAlertTypeSucces = 0, // Green alert view with check mark image
    ISAlertTypeError = 1, // Red alert view with error image
    ISAlertTypeWarning = 2, // 
    ISAlertTypeInfo = 3 // Lightgray alert without image, only with title/message
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
 
 Desc..
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
 
 @param BOOL force hide
 
 */

- (void)hide:(NSNumber*)force;


@end
