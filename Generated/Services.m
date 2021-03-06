/*
	Services.m
	Creates a list of the services available with the  prefix.
	Generated by SudzC.com
*/
#import "Services.h"

@implementation Services

@synthesize logging, server, defaultServer;

@synthesize serviceZWebServiceTest;


#pragma mark Initialization

-(id)initWithServer:(NSString*)serverName{
	if(self = [self init]) {
		self.server = serverName;
	}
	return self;
}

+(Services*)service{
	return (Services*)[[Services alloc] init];
}

+(Services*)serviceWithServer:(NSString*)serverName{
	return (Services*)[[Services alloc] initWithServer:serverName];
}

#pragma mark Methods

-(void)setLogging:(BOOL)value{
	logging = value;
	[self updateServices];
}

-(void)setServer:(NSString*)value{
	server = value;
	[self updateServices];
}

-(void)updateServices{

	[self updateService: self.serviceZWebServiceTest];
}

-(void)updateService:(SoapService*)service{
	service.logging = self.logging;
	if(self.server == nil || self.server.length < 1) { return; }
	service.serviceUrl = [service.serviceUrl stringByReplacingOccurrencesOfString:defaultServer withString:self.server];
}

#pragma mark Getter Overrides


-(serviceZWebServiceTest*)serviceZWebServiceTest{
	if(serviceZWebServiceTestObject == nil) {
		serviceZWebServiceTestObject = [[serviceZWebServiceTest alloc] init];
	}
	return serviceZWebServiceTestObject;
}


@end
			