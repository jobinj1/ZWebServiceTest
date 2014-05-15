//
//  ZWebServiceTestMainViewController.m
//  ZWebServiceTest
//
//  Created by Jobin Jose on 9/22/12.
//  Copyright (c) 2012 Jobin Jose. All rights reserved.
//

#import "ZWebServiceTestMainViewController.h"

@interface ZWebServiceTestMainViewController ()

@end

@implementation ZWebServiceTestMainViewController

@synthesize materialNumber;
@synthesize responseText;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* UITextField delegate methods */

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    if (textField)
    {
        [textField resignFirstResponder];
    }
    return NO;
}

/* respond to user actions */

- (IBAction)getType:(id)sender
{
    responseText.text = NULL;
    
    // initial validation checks
    if (userName.length == 0 || passWord.length == 0)
    {
        responseText.text = @"Set username and password";
        return;
    }
    if (materialNumber.text.length == 0)
    {
        responseText.text = @"Material is mandatory";
        return;
    }
    // create the web service object
    serviceZWebServiceTest *service = [serviceZWebServiceTest
                                       serviceWithUsername:userName
                                       andPassword:passWord];
    request = [service ZWebServiceTest:self action:@selector(ZWebServiceTestHandler:)
                                 Matnr:materialNumber.text];
}

/* handle web service response */

- (void)ZWebServiceTestHandler:(id)value
{
    // Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
        NSError *error = value;
        responseText.text = [error localizedDescription];
		return;
	}
    
	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
        SoapFault *fault = value;
        responseText.text = [fault description];
		return;
	}
    
	// display the result
    responseText.text = value;
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(ZWebServiceTestFlipsideViewController *)controller
{
    userName = (NSMutableString*)controller.userName.text;
    passWord = (NSMutableString*)controller.passWord.text;
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showSettings"]) {
        [[segue destinationViewController] setDelegate:self];
        ZWebServiceTestFlipsideViewController *flipsideViewController =
            segue.destinationViewController;
        flipsideViewController.savedUserName = userName;
        flipsideViewController.savedPassWord = passWord;
        responseText.text = NULL;
    }
}

@end
