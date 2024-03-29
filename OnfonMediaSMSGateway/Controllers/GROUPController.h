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

@interface GROUPController : BaseController

/**
* Completion block definition for asynchronous call to Get Group List */
typedef void (^CompletedGetGroupList)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Get Group List
*/
- (void) getGroupListWithCompletionBlock:(CompletedGetGroupList) onCompleted;

/**
* Completion block definition for asynchronous call to Create New Group */
typedef void (^CompletedPostCreateNewGroup)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Create New Group
* @param    groupName    Required parameter: Name for new group
*/
- (void) createNewGroupAsyncWithGroupName:(NSString*) groupName
                completionBlock:(CompletedPostCreateNewGroup) onCompleted;

/**
* Completion block definition for asynchronous call to Update Group */
typedef void (^CompletedPutUpdateGroup)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Update Group
* @param    groupName    Required parameter: Name for new group
* @param    mid    Required parameter: GroupID
*/
- (void) updateGroupAsyncWithGroupName:(NSString*) groupName
                mid:(NSString*) mid
                completionBlock:(CompletedPutUpdateGroup) onCompleted;

/**
* Completion block definition for asynchronous call to Create Sub-Group Group */
typedef void (^CompletedPutCreateSubGroupGroup)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Create Sub-Group Group
* @param    groupName    Required parameter: Name for new group
* @param    mid    Required parameter: Example: 
*/
- (void) createSubGroupGroupAsyncWithGroupName:(NSString*) groupName
                mid:(NSString*) mid
                completionBlock:(CompletedPutCreateSubGroupGroup) onCompleted;

/**
* Completion block definition for asynchronous call to Delete Group */
typedef void (^CompletedDeleteGroup)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Delete Group
* @param    mid    Required parameter: Example: 
*/
- (void) deleteGroupAsyncWithId:(int) mid
                completionBlock:(CompletedDeleteGroup) onCompleted;

@end