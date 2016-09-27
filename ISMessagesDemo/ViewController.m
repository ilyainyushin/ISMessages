//
//  ViewController.m
//  ISMessagesDemo
//
//  Created by Ilya Inyushin on 09.09.16.
//  Copyright © 2016 Ilya Inyushin. All rights reserved.
//

#import "ViewController.h"
#import "ISMessages.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField* titleField;
@property (weak, nonatomic) IBOutlet UITextField* messageField;
@property (weak, nonatomic) IBOutlet UISwitch *animSwitcher;
@property (weak, nonatomic) IBOutlet UISwitch *positionSwitcher;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.title = @"ISMessages Example";
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    UITapGestureRecognizer* tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard:)];
    tapGesture.cancelsTouchesInView = NO;
    [self.tableView addGestureRecognizer:tapGesture];
   
}

#pragma mark - UITableViewDelegate & UITableDataSource Methods

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    UIView* bgSelectionView = [UIView new];
    bgSelectionView.backgroundColor = [UIColor colorWithRed:240./255. green:240./255. blue:240./255. alpha:1.];
    cell.selectedBackgroundView = bgSelectionView;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView endEditing:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.section) {
        case 0: {
            if (indexPath.row == 0) {
                [ISMessages showCardAlertWithTitle:_titleField.text
                                           message:_messageField.text
                                         iconImage:nil
                                          duration:3.f
                                       hideOnSwipe:YES
                                         hideOnTap:YES
                                         alertType:ISAlertTypeSuccess
                                     alertPosition:@(!_positionSwitcher.isOn).integerValue];
                
            }
            
            if (indexPath.row == 1) {
                [ISMessages showCardAlertWithTitle:_titleField.text
                                           message:_messageField.text
                                         iconImage:nil
                                          duration:3.f
                                       hideOnSwipe:YES
                                         hideOnTap:YES
                                         alertType:ISAlertTypeError
                                     alertPosition:@(!_positionSwitcher.isOn).integerValue];
            }
            
            if (indexPath.row == 2) {
                [ISMessages showCardAlertWithTitle:_titleField.text
                                           message:_messageField.text
                                         iconImage:nil
                                          duration:3.f
                                       hideOnSwipe:YES
                                         hideOnTap:YES
                                         alertType:ISAlertTypeWarning
                                     alertPosition:@(!_positionSwitcher.isOn).integerValue];
                
            }
            
            if (indexPath.row == 3) {
                [ISMessages showCardAlertWithTitle:_titleField.text
                                           message:@"This is simple extension for presenting system-wide notifications from top/bottom of device screen."
                                         iconImage:nil
                                          duration:3.f
                                       hideOnSwipe:YES
                                         hideOnTap:YES
                                         alertType:ISAlertTypeInfo
                                     alertPosition:@(!_positionSwitcher.isOn).integerValue];
            }
            
            if (indexPath.row == 4) {
                ISMessages* alert = [ISMessages cardAlertWithTitle:@"This is custom alert with callback"
                                                           message:@"This is custom alert with custom fonts, font colors, background color"
                                                         iconImage:nil
                                                          duration:3.f
                                                       hideOnSwipe:YES
                                                         hideOnTap:YES
                                                         alertType:ISAlertTypeCustom
                                                     alertPosition:@(!_positionSwitcher.isOn).integerValue];
                
                alert.titleLabelFont = [UIFont boldSystemFontOfSize:15.f];
                alert.titleLabelTextColor = [UIColor blackColor];
                
                alert.messageLabelFont = [UIFont italicSystemFontOfSize:13.f];
                alert.messageLabelTextColor = [UIColor whiteColor];
                
                alert.alertViewBackgroundColor = [UIColor colorWithRed:96.f/255.f green:184.f/255.f blue:237.f/255.f alpha:1.f];
                
                [alert show:^{
                    UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"GOOD"
                                                                                             message:@"CallBack is working!"
                                                                                      preferredStyle:UIAlertControllerStyleAlert];
                    [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil]];
                    [self presentViewController:alertController animated:YES completion:nil];
                }];
                
            }
            
            break;
        }
        case 2: {
            
            if (indexPath.row == 0) {
                [ISMessages hideAlertAnimated:_animSwitcher.isOn];
            }
            
            break;
        }
        default:
            break;
    }
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - UITextFieldDelegate Methods

- (void)hideKeyboard:(UITapGestureRecognizer*)tapGesture {
    [self.tableView endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
