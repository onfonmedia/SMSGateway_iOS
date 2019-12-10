//
//  OnfonMediaSMSGateway
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "SMSController.h"

@implementation SMSController

/**
* Get Sent Message List
* @param    enddate    Required parameter: Date format must be in yyyy-mm-dd
* @param    fromdate    Required parameter: Date format must be in yyyy-mm-dd
* @param    length    Required parameter: Ending index value to fetch the campaign detail.
* @param    start    Required parameter: Starting index value to fetch the campaign detail.
* @return	Returns the void response from the API call */
- (void) getSentMessageListAsyncWithEnddate:(NSDate*) enddate
                fromdate:(NSDate*) fromdate
                length:(int) length
                start:(int) start
                completionBlock:(CompletedGetSentMessageList) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/SMS"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"enddate": [NSDate NSDateFromNSString: enddate],
                    @"fromdate": [NSDate NSDateFromNSString: fromdate],
                    @"length": [NSNumber numberWithInteger: length],
                    @"start": [NSNumber numberWithInteger: start],
                    @"ApiKey": Configuration_ApiKey,
                    @"ClientId": Configuration_ClientId
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"AccessKey": Configuration_AccessKey
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Get Sent Message Status
* @param    messageId    Required parameter: MessageId of message
* @return	Returns the void response from the API call */
- (void) getSentMessageStatusAsyncWithMessageId:(int) messageId
                completionBlock:(CompletedGetSentMessageStatus) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/MessageStatus"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"MessageId": [NSNumber numberWithInteger: messageId],
                    @"ApiKey": Configuration_ApiKey,
                    @"ClientId": Configuration_ClientId
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"AccessKey": Configuration_AccessKey
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

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
* @return	Returns the void response from the API call */
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
                completionBlock:(CompletedGetCreateSMS) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/SendSMS"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"Message": message,
                    @"MobileNumber": mobileNumber,
                    @"SenderId": senderId,
                    @"CoRelator": (nil != coRelator) ? coRelator : [NSNull null],
                    @"Is_Flash": (nil != isFlash) ? isFlash : [NSNull null],
                    @"Is_Unicode": (nil != isUnicode) ? isUnicode : [NSNull null],
                    @"LinkId": (nil != linkId) ? linkId : [NSNull null],
                    @"groupId": (nil != groupId) ? groupId : [NSNull null],
                    @"scheduleTime": (nil != scheduleTime) ? scheduleTime : [NSNull null],
                    @"serviceId": (nil != serviceId) ? serviceId : [NSNull null],
                    @"ApiKey": Configuration_ApiKey,
                    @"ClientId": Configuration_ClientId
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"AccessKey": Configuration_AccessKey
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

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
* @return	Returns the void response from the API call */
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
                completionBlock:(CompletedPostCreateSMS) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/SendSMS"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"Message": message,
                    @"MobileNumber": mobileNumber,
                    @"SenderId": senderId,
                    @"CoRelator": (nil != coRelator) ? coRelator : [NSNull null],
                    @"Is_Flash": (nil != isFlash) ? isFlash : [NSNull null],
                    @"Is_Unicode": (nil != isUnicode) ? isUnicode : [NSNull null],
                    @"LinkId": (nil != linkId) ? linkId : [NSNull null],
                    @"groupId": (nil != groupId) ? groupId : [NSNull null],
                    @"scheduleTime": (nil != scheduleTime) ? scheduleTime : [NSNull null],
                    @"serviceId": (nil != serviceId) ? serviceId : [NSNull null]
                }];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"ApiKey": Configuration_ApiKey,
                    @"ClientId": Configuration_ClientId
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"AccessKey": Configuration_AccessKey
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] post: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

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
* @return	Returns the void response from the API call */
- (void) getCreateBulkSMSAsyncWithMobileNumberMessage:(NSString*) mobileNumberMessage
                senderId:(NSString*) senderId
                coRelator:(NSString*) coRelator
                isFlash:(NSNumber*) isFlash
                isUnicode:(NSNumber*) isUnicode
                linkId:(NSString*) linkId
                scheduleTime:(NSDate*) scheduleTime
                serviceId:(NSString*) serviceId
                completionBlock:(CompletedGetCreateBulkSMS) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/SendBulkSMS"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"MobileNumber_Message": mobileNumberMessage,
                    @"SenderId": senderId,
                    @"CoRelator": (nil != coRelator) ? coRelator : [NSNull null],
                    @"Is_Flash": (nil != isFlash) ? isFlash : [NSNull null],
                    @"Is_Unicode": (nil != isUnicode) ? isUnicode : [NSNull null],
                    @"LinkId": (nil != linkId) ? linkId : [NSNull null],
                    @"scheduleTime": (nil != scheduleTime) ? scheduleTime : [NSNull null],
                    @"serviceId": (nil != serviceId) ? serviceId : [NSNull null],
                    @"ApiKey": Configuration_ApiKey,
                    @"ClientId": Configuration_ClientId
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"AccessKey": Configuration_AccessKey
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Create Bulk SMS
* @param    messageParameters    Required parameter: Example: 
* @param    senderId    Required parameter: Approved Sender Id
* @param    isFlash    Optional parameter: Is_Flash is true or false for flash message
* @param    isUnicode    Optional parameter: Is_Unicode is true or false for unicode message
* @param    scheduleDateTime    Optional parameter: scheduleTime Date in yyyy-MM-dd HH:MM (only for schedule message)
* @return	Returns the void response from the API call */
- (void) createBulkSMSAsyncWithMessageParameters:(NSArray*) messageParameters
                senderId:(NSString*) senderId
                isFlash:(NSNumber*) isFlash
                isUnicode:(NSNumber*) isUnicode
                scheduleDateTime:(NSDate*) scheduleDateTime
                completionBlock:(CompletedPostCreateBulkSMS) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/SendBulkSMS"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"MessageParameters": (nil != messageParameters) ? messageParameters : [NSNull null],
                    @"ScheduleDateTime": (nil != scheduleDateTime) ? scheduleDateTime : [NSNull null]
                }];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"SenderId": senderId,
                    @"Is_Flash": (nil != isFlash) ? isFlash : [NSNull null],
                    @"Is_Unicode": (nil != isUnicode) ? isUnicode : [NSNull null],
                    @"ApiKey": Configuration_ApiKey,
                    @"ClientId": Configuration_ClientId
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"AccessKey": Configuration_AccessKey
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] post: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}


@end