//
//  OnfonMediaSMSGateway
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"

@interface AccountController : BaseController

/**
* Completion block definition for asynchronous call to Credit Balance */
typedef void (^CompletedGetCreditBalance)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Get Credit Balance
*/
- (void) getCreditBalanceWithCompletionBlock:(CompletedGetCreditBalance) onCompleted;

@end