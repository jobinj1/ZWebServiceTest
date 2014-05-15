//
//  ZWebServiceTestFlipsideViewController.m
//  ZWebServiceTest
//
//  Created by Jobin Jose on 9/22/12.
//  Copyright (c) 2012 Jobin Jose. All rights reserved.
//

#import "ZWebServiceTestFlipsideViewController.h"

@interface ZWebServiceTestFlipsideViewController ()

@end

@implementation ZWebServiceTestFlipsideViewController

@synthesize userName;
@synthesize passWord;
@synthesize savedUserName;
@synthesize savedPassWord;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    userName.text = (NSString*)savedUserName;
    passWord.text = (NSString*)savedPassWord;
    savedUserName = NULL;
    savedUserName = NULL;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    if (textField)
    {
        [textField resignFirstResponder];
    }
    return NO;
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
