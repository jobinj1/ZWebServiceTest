/*
	serviceZWebServiceTest.h
	The interface definition of classes and methods for the serviceZWebServiceTest web service.
	Generated by SudzC.com
*/
				
#import "Soap.h"
	
/*  */
	
/* Add class references */
				

/* Interface for the service */
				
@interface serviceZWebServiceTest : SoapService
		
	/* Returns NSString*.  */
	- (SoapRequest*) ZWebServiceTest: (id <SoapDelegate>) handler Matnr: (NSString*) Matnr;
	- (SoapRequest*) ZWebServiceTest: (id) target action: (SEL) action Matnr: (NSString*) Matnr;

		
	+ (serviceZWebServiceTest*) service;
	+ (serviceZWebServiceTest*) serviceWithUsername: (NSString*) username andPassword: (NSString*) password;
@end
	