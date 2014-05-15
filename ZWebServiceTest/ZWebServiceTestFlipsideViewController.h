//
//  ZWebServiceTestFlipsideViewController.h
//  ZWebServiceTest
//
//  Created by Jobin Jose on 9/22/12.
//  Copyright (c) 2012 Jobin Jose. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZWebServiceTestFlipsideViewController;

@protocol ZWebServiceTestFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(ZWebServiceTestFlipsideViewController *)controller;

@end

@interface ZWebServiceTestFlipsideViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) id <ZWebServiceTestFlipsideViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *passWord;
@property (weak, nonatomic) NSMutableString *savedUserName;
@property (weak, nonatomic) NSMutableString *savedPassWord;

- (IBAction)done:(id)sender;

@end
