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
#import "NSDate+extension.h"

@interface SMSController : BaseController

/**
* Completion block definition for asynchronous call to Get Sent Message List */
typedef void (^CompletedGetSentMessageList)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Get Sent Message List
* @param    enddate    Required parameter: Date format must be in yyyy-mm-dd
* @param    fromdate    Required parameter: Date format must be in yyyy-mm-dd
* @param    length    Required parameter: Ending index value to fetch the campaign detail.
* @param    start    Required parameter: Starting index value to fetch the campaign detail.
*/
- (void) getSentMessageListAsyncWithEnddate:(NSDate*) enddate
                fromdate:(NSDate*) fromdate
                length:(int) length
                start:(int) start
                completionBlock:(CompletedGetSentMessageList) onCompleted;

/**
* Completion block definition for asynchronous call to Get Sent Message Status */
typedef void (^CompletedGetSentMessageStatus)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Get Sent Message Status
* @param    messageId    Required parameter: MessageId of message
*/
- (void) getSentMessageStatusAsyncWithMessageId:(int) messageId
                completionBlock:(CompletedGetSentMessageStatus) onCompleted;

/**
* Completion block definition for asynchronous call to Create SMS */
typedef void (^CompletedGetCreateSMS)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Create SMS
* @param    message    Required parameter: text message to send
* @param    mobileNumber    Required parameter: Use mobile number as comma sepreated to send message on multiple mobile number e.g. 78461230,78945612
* @param    senderId    Required parameter: Approved Sender Id
* @param    coRelator    Optional parameter: Parameter required for using SDP OnDemand Service
* @param    isFlash    Optional parameter: Is_Flash is true or false for flash message
* @param    isUnicode    Optional parameter: Is_Unicode is true or false for unicode message
* @param    linkId    Optional parameter: Parameter required for using SDP OnDemand Service
* @param    groupId    Optional parameter: Valid group-id of current user (only for group message otherwise leave empty string)
* @param    scheduleTime    Optional parameter: scheduleTime Date in yyyy-MM-dd HH:MM (only for schedule message)
* @param    serviceId    Optional parameter: Parameter required for using SDP OnSubscription Service
*/
- (void) getCreateSMSAsyncWithMessage:(NSString*) message
                mobileNumber:(NSString*) mobileNumber
                senderId:(NSString*) senderId
                coRelator:(NSString*) coRelator
                isFlash:(NSNumber*) isFlash
                isUnicode:(NSNumber*) isUnicode
                linkId:(NSString*) linkId
                groupId:(NSString*) groupId
                scheduleTime:(NSString*) scheduleTime
                serviceId:(NSString*) serviceId
                completionBlock:(CompletedGetCreateSMS) onCompleted;

/**
* Completion block definition for asynchronous call to Create SMS */
typedef void (^CompletedPostCreateSMS)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Create SMS
* @param    message    Required parameter: text message to send
* @param    mobileNumber    Required parameter: Use mobile number as comma sepreated to send message on multiple mobile number e.g. 78461230,78945612
* @param    senderId    Required parameter: Approved Sender Id
* @param    coRelator    Optional parameter: Parameter required for using SDP OnDemand Service
* @param    isFlash    Optional parameter: Is_Flash is true or false for flash message
* @param    isUnicode    Optional parameter: Is_Unicode is true or false for unicode message
* @param    linkId    Optional parameter: Parameter required for using SDP OnDemand Service
* @param    groupId    Optional parameter: Valid group-id of current user (only for group message otherwise leave empty string)
* @param    scheduleTime    Optional parameter: scheduleTime Date in yyyy-MM-dd HH:MM (only for schedule message)
* @param    serviceId    Optional parameter: Parameter required for using SDP OnSubscription Service
*/
- (void) createSMSAsyncWithMessage:(NSString*) message
                mobileNumber:(NSString*) mobileNumber
                senderId:(NSString*) senderId
                coRelator:(NSString*) coRelator
                isFlash:(NSNumber*) isFlash
                isUnicode:(NSNumber*) isUnicode
                linkId:(NSString*) linkId
                groupId:(NSString*) groupId
                scheduleTime:(NSString*) scheduleTime
                serviceId:(NSString*) serviceId
                completionBlock:(CompletedPostCreateSMS) onCompleted;

/**
* Completion block definition for asynchronous call to Create Bulk SMS */
typedef void (^CompletedGetCreateBulkSMS)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Create Bulk SMS
* @param    mobileNumberMessage    Required parameter: Please ensure while submitting the request the message should be passed in encoded format. e.g. 78461230^test~78945612^hello
* @param    senderId    Required parameter: Approved Sender Id
* @param    coRelator    Optional parameter: Parameter required for using SDP OnDemand Service
* @param    isFlash    Optional parameter: Is_Flash is true or false for flash message
* @param    isUnicode    Optional parameter: Is_Unicode is true or false for unicode message
* @param    linkId    Optional parameter: Parameter required for using SDP OnDemand Service
* @param    scheduleTime    Optional parameter: scheduleTime Date in yyyy-MM-dd HH:MM (only for schedule message)
* @param    serviceId    Optional parameter: Parameter required for using SDP OnSubscription Service
*/
- (void) getCreateBulkSMSAsyncWithMobileNumberMessage:(NSString*) mobileNumberMessage
                senderId:(NSString*) senderId
                coRelator:(NSString*) coRelator
                isFlash:(NSNumber*) isFlash
                isUnicode:(NSNumber*) isUnicode
                linkId:(NSString*) linkId
                scheduleTime:(NSDate*) scheduleTime
                serviceId:(NSString*) serviceId
                completionBlock:(CompletedGetCreateBulkSMS) onCompleted;

/**
* Completion block definition for asynchronous call to Create Bulk SMS */
typedef void (^CompletedPostCreateBulkSMS)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Create Bulk SMS
* @param    messageParameters    Required parameter: Example: 
* @param    senderId    Required parameter: Approved Sender Id
* @param    isFlash    Optional parameter: Is_Flash is true or false for flash message
* @param    isUnicode    Optional parameter: Is_Unicode is true or false for unicode message
* @param    scheduleDateTime    Optional parameter: scheduleTime Date in yyyy-MM-dd HH:MM (only for schedule message)
*/
- (void) createBulkSMSAsyncWithMessageParameters:(NSArray*) messageParameters
                senderId:(NSString*) senderId
                isFlash:(NSNumber*) isFlash
                isUnicode:(NSNumber*) isUnicode
                scheduleDateTime:(NSDate*) scheduleDateTime
                completionBlock:(CompletedPostCreateBulkSMS) onCompleted;

@end