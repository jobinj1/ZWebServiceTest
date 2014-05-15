/*
	serviceZWebServiceTestExample.m
	Provides example and test runs the service's proxy methods.
	Generated by SudzC.com
*/
#import "serviceZWebServiceTestExample.h"
#import "serviceZWebServiceTest.h"

@implementation serviceZWebServiceTestExample

- (void)run {
	// Create the service
	serviceZWebServiceTest* service = [serviceZWebServiceTest service];
	service.logging = YES;
	// service.username = @"username";
	// service.password = @"password";
	

	// Returns NSString*. 
	[service ZWebServiceTest:self action:@selector(ZWebServiceTestHandler:) Matnr: @""];
}

	

// Handle the response from ZWebServiceTest.
		
- (void) ZWebServiceTestHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSString* result
		NSString* result = (NSString*)value;
	NSLog(@"ZWebServiceTest returned the value: %@", result);
			
}
	

@end
		