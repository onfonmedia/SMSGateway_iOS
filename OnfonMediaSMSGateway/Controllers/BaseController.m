//
//  OnfonMediaSMSGateway
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "BaseController.h"

@implementation BaseController

@synthesize clientInstance;

/**
 * Default initialization to use the UnirestClient
 */
-(id) init
{
    self = [super init];
    self.clientInstance = [[UnirestClient alloc] init];
    //Sets the timeout to the nearest second
        return self;
}

/**
 * Custom initialization to use the user specified IHttpClient
 */
-(id) initWithHttpClient: (id<IHttpClient>) client
{
    self = [super init];
    self.clientInstance = client;
    return self;
}

@end
