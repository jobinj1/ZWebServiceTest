//
//  ZWebServiceTestMainViewController.h
//  ZWebServiceTest
//
//  Created by Jobin Jose on 9/22/12.
//  Copyright (c) 2012 Jobin Jose. All rights reserved.
//

#import "ZWebServiceTestFlipsideViewController.h"
#import "serviceZWebServiceTest.h"

NSMutableString *userName;
NSMutableString *passWord;
SoapRequest *request;

@interface ZWebServiceTestMainViewController : UIViewController <ZWebServiceTestFlipsideViewControllerDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *materialNumber;
@property (weak, nonatomic) IBOutlet UILabel *responseText;

- (IBAction)getType:(id)sender;

- (void) ZWebServiceTestHandler:(id)value;

@end
