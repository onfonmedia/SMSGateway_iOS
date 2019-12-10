# Getting started

Send SMS with Onfon Media SMS Platform.

## How to Build


The generated code has dependencies over external libraries like UniRest. These dependencies are defined in the ```PodFile``` file that comes with the SDK. 
To resolve these dependencies, we use the Cocoapods package manager.
Visit https://guides.cocoapods.org/using/getting-started.html to setup Cocoapods on your system.
Open command prompt and type ```pod --version```. This should display the current version of Cocoapods installed if the installation was successful.

Using command line, navigate to the directory containing the generated files (including ```PodFile```) for the SDK. 
Run the command ```pod install```. This should install all the required dependencies and create the ```pods``` directory in your project directory.

![Installing dependencies using Cocoapods](https://apidocs.io/illustration/objc?step=AddDependencies&workspaceFolder=OnfonMedia%20SMS%20Gateway-ObjC&workspaceName=OnfonMediaSMSGateway&projectName=OnfonMediaSMSGateway&rootNamespace=OnfonMediaSMSGateway)

Open the project workspace using the (OnfonMediaSMSGateway.xcworkspace) file. Invoke the build process using `Command(⌘)+B` shortcut key or using the `Build` menu as shown below.

![Building SDK using Xcode](https://apidocs.io/illustration/objc?step=BuildSDK&workspaceFolder=OnfonMedia%20SMS%20Gateway-ObjC&workspaceName=OnfonMediaSMSGateway&projectName=OnfonMediaSMSGateway&rootNamespace=OnfonMediaSMSGateway)


## How to Use

The generated code is a Cocoa Touch Static Library which can be used in any iOS project. The support for these generated libraries go all the way back to iOS 6.

The following section explains how to use the OnfonMediaSMSGateway library in a new iOS project.     
### 1. Starting a new project
To start a new project, left-click on the ```Create a new Xcode project```.
![Create Test Project - Step 1](https://apidocs.io/illustration/objc?step=Test1&workspaceFolder=OnfonMedia%20SMS%20Gateway-ObjC&workspaceName=OnfonMediaSMSGateway&projectName=OnfonMediaSMSGateway&rootNamespace=OnfonMediaSMSGateway)

Next, choose **Single View Application** and click ```Next```.
![Create Test Project - Step 2](https://apidocs.io/illustration/objc?step=Test2&workspaceFolder=OnfonMedia%20SMS%20Gateway-ObjC&workspaceName=OnfonMediaSMSGateway&projectName=OnfonMediaSMSGateway&rootNamespace=OnfonMediaSMSGateway)

Provide **Test-Project** as the product name click ```Next```.
![Create Test Project - Step 3](https://apidocs.io/illustration/objc?step=Test3&workspaceFolder=OnfonMedia%20SMS%20Gateway-ObjC&workspaceName=OnfonMediaSMSGateway&projectName=OnfonMediaSMSGateway&rootNamespace=OnfonMediaSMSGateway)

Choose the desired location of your project folder and click ```Create```.
![Create Test Project - Step 4](https://apidocs.io/illustration/objc?step=Test4&workspaceFolder=OnfonMedia%20SMS%20Gateway-ObjC&workspaceName=OnfonMediaSMSGateway&projectName=OnfonMediaSMSGateway&rootNamespace=OnfonMediaSMSGateway)

### 2. Adding the static library dependency
To add this dependency open a terminal and navigate to your project folder. Next, input ```pod init``` and press enter.
![Add dependency - Step 1](https://apidocs.io/illustration/objc?step=Add0&workspaceFolder=OnfonMedia%20SMS%20Gateway-ObjC&workspaceName=OnfonMediaSMSGateway&projectName=OnfonMediaSMSGateway&rootNamespace=OnfonMediaSMSGateway)

Next, open the newly created ```PodFile``` in your favourite text editor. Add the following line : pod 'OnfonMediaSMSGateway', :path => 'Vendor/OnfonMediaSMSGateway'
![Add dependency - Step 2](https://apidocs.io/illustration/objc?step=Add1&workspaceFolder=OnfonMedia%20SMS%20Gateway-ObjC&workspaceName=OnfonMediaSMSGateway&projectName=OnfonMediaSMSGateway&rootNamespace=OnfonMediaSMSGateway)

Execute `pod install` from terminal to install the dependecy in your project. This would add the dependency to the newly created test project.
![Add dependency - Step 3](https://apidocs.io/illustration/objc?step=Add2&workspaceFolder=OnfonMedia%20SMS%20Gateway-ObjC&workspaceName=OnfonMediaSMSGateway&projectName=OnfonMediaSMSGateway&rootNamespace=OnfonMediaSMSGateway)


## How to Test

Unit tests in this SDK can be run using Xcode. 

First build the SDK as shown in the steps above and naivgate to the project directory and open the OnfonMediaSMSGateway.xcworkspace file.

Go to the test explorer in Xcode as shown in the picture below and click on `run tests` from the menu. 
![Run tests](https://apidocs.io/illustration/objc?step=RunTests&workspaceFolder=OnfonMedia%20SMS%20Gateway-ObjC&workspaceName=OnfonMediaSMSGateway&projectName=OnfonMediaSMSGateway&rootNamespace=OnfonMediaSMSGateway)


## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| accessKey | Network Layer Access Key |
| apiKey | Used for authentication purpose and pass this parameter in URL encoded format. |
| clientId | Used for authentication purpose and pass this parameter in URL encoded format. |



Configuration variables can be set as following.
```Objc
// Configuration parameters and credentials
Configuration_AccessKey = "ACCESS_KEY"; // Network Layer Access Key
Configuration_ApiKey = "API_KEY"; // Used for authentication purpose and pass this parameter in URL encoded format.
Configuration_ClientId = "CLIENT_ID"; // Used for authentication purpose and pass this parameter in URL encoded format.

```

# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [AccountController](#account_controller)
* [TemplateController](#template_controller)
* [SMSController](#sms_controller)
* [GROUPController](#group_controller)
* [CampaignController](#campaign_controller)

## <a name="account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AccountController") AccountController

### Get singleton instance
```objc
Account* account = [[Account alloc]init] ;
```

### <a name="get_credit_balance_with_completion_block"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.getCreditBalanceWithCompletionBlock") getCreditBalanceWithCompletionBlock

> Get Credit Balance


```objc
function getCreditBalanceWithCompletionBlock:(CompletedGetCreditBalance) onCompleted()
```



#### Example Usage

```objc

    [self.account getCreditBalanceWithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="template_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TemplateController") TemplateController

### Get singleton instance
```objc
Template* template = [[Template alloc]init] ;
```

### <a name="get_template_list_with_completion_block"></a>![Method: ](https://apidocs.io/img/method.png ".TemplateController.getTemplateListWithCompletionBlock") getTemplateListWithCompletionBlock

> Get Template List


```objc
function getTemplateListWithCompletionBlock:(CompletedGetTemplateList) onCompleted()
```



#### Example Usage

```objc

    [self.template getTemplateListWithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_new_template_async_with_message_template"></a>![Method: ](https://apidocs.io/img/method.png ".TemplateController.createNewTemplateAsyncWithMessageTemplate") createNewTemplateAsyncWithMessageTemplate

> Create New Template


```objc
function createNewTemplateAsyncWithMessageTemplate:(NSString*) messageTemplate
                templateName:(NSString*) templateName
                completionBlock:(CompletedPostCreateNewTemplate) onCompleted(messageTemplate templateName : templateName)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageTemplate |  ``` Required ```  | Template text. |
| templateName |  ``` Required ```  | Name of template |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* messageTemplate = @"MessageTemplate";
    NSString* templateName = @"TemplateName";

    [self.template createNewTemplateAsyncWithMessageTemplate: messageTemplate templateName : templateName  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


### <a name="update_template_async_with_message_template"></a>![Method: ](https://apidocs.io/img/method.png ".TemplateController.updateTemplateAsyncWithMessageTemplate") updateTemplateAsyncWithMessageTemplate

> Update Template


```objc
function updateTemplateAsyncWithMessageTemplate:(NSString*) messageTemplate
                templateName:(NSString*) templateName
                mid:(int) mid
                completionBlock:(CompletedPutUpdateTemplate) onCompleted(messageTemplate templateName : templateName mid : mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageTemplate |  ``` Required ```  | Template text. |
| templateName |  ``` Required ```  | Name of template |
| mid |  ``` Required ```  | id of template |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* messageTemplate = @"MessageTemplate";
    NSString* templateName = @"TemplateName";
    int mid = 225;

    [self.template updateTemplateAsyncWithMessageTemplate: messageTemplate templateName : templateName mid : mid  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_template_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".TemplateController.deleteTemplateAsyncWithId") deleteTemplateAsyncWithId

> Delete Template


```objc
function deleteTemplateAsyncWithId:(int) mid
                completionBlock:(CompletedDeleteTemplate) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | id of template |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 225;

    [self.template deleteTemplateAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="sms_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SMSController") SMSController

### Get singleton instance
```objc
SMS* sMS = [[SMS alloc]init] ;
```

### <a name="get_sent_message_list_async_with_enddate"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.getSentMessageListAsyncWithEnddate") getSentMessageListAsyncWithEnddate

> Get Sent Message List


```objc
function getSentMessageListAsyncWithEnddate:(NSDate*) enddate
                fromdate:(NSDate*) fromdate
                length:(int) length
                start:(int) start
                completionBlock:(CompletedGetSentMessageList) onCompleted(enddate fromdate : fromdate length : length start : start)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| enddate |  ``` Required ```  | Date format must be in yyyy-mm-dd |
| fromdate |  ``` Required ```  | Date format must be in yyyy-mm-dd |
| length |  ``` Required ```  | Ending index value to fetch the campaign detail. |
| start |  ``` Required ```  | Starting index value to fetch the campaign detail. |





#### Example Usage

```objc
    // Parameters for the API call
    NSDate* enddate = [NSDate date];
    NSDate* fromdate = [NSDate date];
    int length = 183;
    int start = 183;

    [self.sMS getSentMessageListAsyncWithEnddate: enddate fromdate : fromdate length : length start : start  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


### <a name="get_sent_message_status_async_with_message_id"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.getSentMessageStatusAsyncWithMessageId") getSentMessageStatusAsyncWithMessageId

> Get Sent Message Status


```objc
function getSentMessageStatusAsyncWithMessageId:(int) messageId
                completionBlock:(CompletedGetSentMessageStatus) onCompleted(messageId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageId |  ``` Required ```  | MessageId of message |





#### Example Usage

```objc
    // Parameters for the API call
    int messageId = 183;

    [self.sMS getSentMessageStatusAsyncWithMessageId: messageId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


### <a name="get_create_sms_async_with_message"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.getCreateSMSAsyncWithMessage") getCreateSMSAsyncWithMessage

> Create SMS


```objc
function getCreateSMSAsyncWithMessage:(NSString*) message
                mobileNumber:(NSString*) mobileNumber
                senderId:(NSString*) senderId
                coRelator:(NSString*) coRelator
                isFlash:(NSNumber*) isFlash
                isUnicode:(NSNumber*) isUnicode
                linkId:(NSString*) linkId
                groupId:(NSString*) groupId
                scheduleTime:(NSString*) scheduleTime
                serviceId:(NSString*) serviceId
                completionBlock:(CompletedGetCreateSMS) onCompleted(message mobileNumber : mobileNumber senderId : senderId coRelator : coRelator isFlash : isFlash isUnicode : isUnicode linkId : linkId groupId : groupId scheduleTime : scheduleTime serviceId : serviceId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message |  ``` Required ```  | text message to send |
| mobileNumber |  ``` Required ```  | Use mobile number as comma sepreated to send message on multiple mobile number e.g. 78461230,78945612 |
| senderId |  ``` Required ```  | Approved Sender Id |
| coRelator |  ``` Optional ```  | Parameter required for using SDP OnDemand Service |
| isFlash |  ``` Optional ```  | Is_Flash is true or false for flash message |
| isUnicode |  ``` Optional ```  | Is_Unicode is true or false for unicode message |
| linkId |  ``` Optional ```  | Parameter required for using SDP OnDemand Service |
| groupId |  ``` Optional ```  | Valid group-id of current user (only for group message otherwise leave empty string) |
| scheduleTime |  ``` Optional ```  | scheduleTime Date in yyyy-MM-dd HH:MM (only for schedule message) |
| serviceId |  ``` Optional ```  | Parameter required for using SDP OnSubscription Service |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* message = @"Message";
    NSString* mobileNumber = @"MobileNumber";
    NSString* senderId = @"SenderId";
    NSString* coRelator = @"CoRelator";
    NSNumber* isFlash = true;
    NSNumber* isUnicode = true;
    NSString* linkId = @"LinkId";
    NSString* groupId = @"groupId";
    NSString* scheduleTime = @"scheduleTime";
    NSString* serviceId = @"serviceId";

    [self.sMS getCreateSMSAsyncWithMessage: message mobileNumber : mobileNumber senderId : senderId coRelator : coRelator isFlash : isFlash isUnicode : isUnicode linkId : linkId groupId : groupId scheduleTime : scheduleTime serviceId : serviceId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_sms_async_with_message"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createSMSAsyncWithMessage") createSMSAsyncWithMessage

> Create SMS


```objc
function createSMSAsyncWithMessage:(NSString*) message
                mobileNumber:(NSString*) mobileNumber
                senderId:(NSString*) senderId
                coRelator:(NSString*) coRelator
                isFlash:(NSNumber*) isFlash
                isUnicode:(NSNumber*) isUnicode
                linkId:(NSString*) linkId
                groupId:(NSString*) groupId
                scheduleTime:(NSString*) scheduleTime
                serviceId:(NSString*) serviceId
                completionBlock:(CompletedPostCreateSMS) onCompleted(message mobileNumber : mobileNumber senderId : senderId coRelator : coRelator isFlash : isFlash isUnicode : isUnicode linkId : linkId groupId : groupId scheduleTime : scheduleTime serviceId : serviceId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message |  ``` Required ```  | text message to send |
| mobileNumber |  ``` Required ```  | Use mobile number as comma sepreated to send message on multiple mobile number e.g. 78461230,78945612 |
| senderId |  ``` Required ```  | Approved Sender Id |
| coRelator |  ``` Optional ```  | Parameter required for using SDP OnDemand Service |
| isFlash |  ``` Optional ```  | Is_Flash is true or false for flash message |
| isUnicode |  ``` Optional ```  | Is_Unicode is true or false for unicode message |
| linkId |  ``` Optional ```  | Parameter required for using SDP OnDemand Service |
| groupId |  ``` Optional ```  | Valid group-id of current user (only for group message otherwise leave empty string) |
| scheduleTime |  ``` Optional ```  | scheduleTime Date in yyyy-MM-dd HH:MM (only for schedule message) |
| serviceId |  ``` Optional ```  | Parameter required for using SDP OnSubscription Service |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* message = @"Message";
    NSString* mobileNumber = @"MobileNumber";
    NSString* senderId = @"SenderId";
    NSString* coRelator = @"CoRelator";
    NSNumber* isFlash = true;
    NSNumber* isUnicode = true;
    NSString* linkId = @"LinkId";
    NSString* groupId = @"groupId";
    NSString* scheduleTime = @"scheduleTime";
    NSString* serviceId = @"serviceId";

    [self.sMS createSMSAsyncWithMessage: message mobileNumber : mobileNumber senderId : senderId coRelator : coRelator isFlash : isFlash isUnicode : isUnicode linkId : linkId groupId : groupId scheduleTime : scheduleTime serviceId : serviceId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


### <a name="get_create_bulk_sms_async_with_mobile_number_message"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.getCreateBulkSMSAsyncWithMobileNumberMessage") getCreateBulkSMSAsyncWithMobileNumberMessage

> Create Bulk SMS


```objc
function getCreateBulkSMSAsyncWithMobileNumberMessage:(NSString*) mobileNumberMessage
                senderId:(NSString*) senderId
                coRelator:(NSString*) coRelator
                isFlash:(NSNumber*) isFlash
                isUnicode:(NSNumber*) isUnicode
                linkId:(NSString*) linkId
                scheduleTime:(NSDate*) scheduleTime
                serviceId:(NSString*) serviceId
                completionBlock:(CompletedGetCreateBulkSMS) onCompleted(mobileNumberMessage senderId : senderId coRelator : coRelator isFlash : isFlash isUnicode : isUnicode linkId : linkId scheduleTime : scheduleTime serviceId : serviceId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mobileNumberMessage |  ``` Required ```  | Please ensure while submitting the request the message should be passed in encoded format. e.g. 78461230^test~78945612^hello |
| senderId |  ``` Required ```  | Approved Sender Id |
| coRelator |  ``` Optional ```  | Parameter required for using SDP OnDemand Service |
| isFlash |  ``` Optional ```  | Is_Flash is true or false for flash message |
| isUnicode |  ``` Optional ```  | Is_Unicode is true or false for unicode message |
| linkId |  ``` Optional ```  | Parameter required for using SDP OnDemand Service |
| scheduleTime |  ``` Optional ```  | scheduleTime Date in yyyy-MM-dd HH:MM (only for schedule message) |
| serviceId |  ``` Optional ```  | Parameter required for using SDP OnSubscription Service |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* mobileNumberMessage = @"MobileNumber_Message";
    NSString* senderId = @"SenderId";
    NSString* coRelator = @"CoRelator";
    NSNumber* isFlash = true;
    NSNumber* isUnicode = true;
    NSString* linkId = @"LinkId";
    NSDate* scheduleTime = [NSDate date];
    NSString* serviceId = @"serviceId";

    [self.sMS getCreateBulkSMSAsyncWithMobileNumberMessage: mobileNumberMessage senderId : senderId coRelator : coRelator isFlash : isFlash isUnicode : isUnicode linkId : linkId scheduleTime : scheduleTime serviceId : serviceId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_bulk_sms_async_with_message_parameters"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createBulkSMSAsyncWithMessageParameters") createBulkSMSAsyncWithMessageParameters

> Create Bulk SMS


```objc
function createBulkSMSAsyncWithMessageParameters:(NSArray*) messageParameters
                senderId:(NSString*) senderId
                isFlash:(NSNumber*) isFlash
                isUnicode:(NSNumber*) isUnicode
                scheduleDateTime:(NSDate*) scheduleDateTime
                completionBlock:(CompletedPostCreateBulkSMS) onCompleted(messageParameters senderId : senderId isFlash : isFlash isUnicode : isUnicode scheduleDateTime : scheduleDateTime)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageParameters |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |
| senderId |  ``` Required ```  | Approved Sender Id |
| isFlash |  ``` Optional ```  | Is_Flash is true or false for flash message |
| isUnicode |  ``` Optional ```  | Is_Unicode is true or false for unicode message |
| scheduleDateTime |  ``` Optional ```  | scheduleTime Date in yyyy-MM-dd HH:MM (only for schedule message) |





#### Example Usage

```objc
    // Parameters for the API call
    NSArray* messageParameters = @[@"MessageParameters",@"MessageParameters",@"MessageParameters"];
    NSString* senderId = @"SenderId";
    NSNumber* isFlash = true;
    NSNumber* isUnicode = true;
    NSDate* scheduleDateTime = [NSDate date];

    [self.sMS createBulkSMSAsyncWithMessageParameters: messageParameters senderId : senderId isFlash : isFlash isUnicode : isUnicode scheduleDateTime : scheduleDateTime  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="group_controller"></a>![Class: ](https://apidocs.io/img/class.png ".GROUPController") GROUPController

### Get singleton instance
```objc
GROUP* gROUP = [[GROUP alloc]init] ;
```

### <a name="get_group_list_with_completion_block"></a>![Method: ](https://apidocs.io/img/method.png ".GROUPController.getGroupListWithCompletionBlock") getGroupListWithCompletionBlock

> Get Group List


```objc
function getGroupListWithCompletionBlock:(CompletedGetGroupList) onCompleted()
```



#### Example Usage

```objc

    [self.gROUP getGroupListWithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_new_group_async_with_group_name"></a>![Method: ](https://apidocs.io/img/method.png ".GROUPController.createNewGroupAsyncWithGroupName") createNewGroupAsyncWithGroupName

> Create New Group


```objc
function createNewGroupAsyncWithGroupName:(NSString*) groupName
                completionBlock:(CompletedPostCreateNewGroup) onCompleted(groupName)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| groupName |  ``` Required ```  | Name for new group |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* groupName = @"GroupName";

    [self.gROUP createNewGroupAsyncWithGroupName: groupName  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


### <a name="update_group_async_with_group_name"></a>![Method: ](https://apidocs.io/img/method.png ".GROUPController.updateGroupAsyncWithGroupName") updateGroupAsyncWithGroupName

> Update Group


```objc
function updateGroupAsyncWithGroupName:(NSString*) groupName
                mid:(NSString*) mid
                completionBlock:(CompletedPutUpdateGroup) onCompleted(groupName mid : mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| groupName |  ``` Required ```  | Name for new group |
| mid |  ``` Required ```  | GroupID |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* groupName = @"GroupName";
    NSString* mid = @"id";

    [self.gROUP updateGroupAsyncWithGroupName: groupName mid : mid  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_sub_group_group_async_with_group_name"></a>![Method: ](https://apidocs.io/img/method.png ".GROUPController.createSubGroupGroupAsyncWithGroupName") createSubGroupGroupAsyncWithGroupName

> Create Sub-Group Group


```objc
function createSubGroupGroupAsyncWithGroupName:(NSString*) groupName
                mid:(NSString*) mid
                completionBlock:(CompletedPutCreateSubGroupGroup) onCompleted(groupName mid : mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| groupName |  ``` Required ```  | Name for new group |
| mid |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* groupName = @"GroupName";
    NSString* mid = @"Id";

    [self.gROUP createSubGroupGroupAsyncWithGroupName: groupName mid : mid  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_group_async_with_id"></a>![Method: ](https://apidocs.io/img/method.png ".GROUPController.deleteGroupAsyncWithId") deleteGroupAsyncWithId

> Delete Group


```objc
function deleteGroupAsyncWithId:(int) mid
                completionBlock:(CompletedDeleteGroup) onCompleted(mid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mid |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int mid = 183;

    [self.gROUP deleteGroupAsyncWithId: mid  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="campaign_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CampaignController") CampaignController

### Get singleton instance
```objc
Campaign* campaign = [[Campaign alloc]init] ;
```

### <a name="get_campaign_message_status_async_with_campaign_id"></a>![Method: ](https://apidocs.io/img/method.png ".CampaignController.getCampaignMessageStatusAsyncWithCampaignId") getCampaignMessageStatusAsyncWithCampaignId

> Get Campaign Message Status


```objc
function getCampaignMessageStatusAsyncWithCampaignId:(int) campaignId
                completionBlock:(CompletedGetCampaignMessageStatus) onCompleted(campaignId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| campaignId |  ``` Required ```  | First user have to call Get Campaigns api for CampaignId |





#### Example Usage

```objc
    // Parameters for the API call
    int campaignId = 183;

    [self.campaign getCampaignMessageStatusAsyncWithCampaignId: campaignId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


### <a name="get_campaigns_async_with_enddate"></a>![Method: ](https://apidocs.io/img/method.png ".CampaignController.getCampaignsAsyncWithEnddate") getCampaignsAsyncWithEnddate

> Get Campaigns


```objc
function getCampaignsAsyncWithEnddate:(NSDate*) enddate
                fromdate:(NSDate*) fromdate
                length:(int) length
                start:(int) start
                completionBlock:(CompletedGetCampaigns) onCompleted(enddate fromdate : fromdate length : length start : start)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| enddate |  ``` Required ```  | Date format must be in yyyy-mm-dd |
| fromdate |  ``` Required ```  | Date format must be in yyyy-mm-dd |
| length |  ``` Required ```  | Ending index value to fetch the campaign detail. |
| start |  ``` Required ```  | Starting index value to fetch the campaign detail. |





#### Example Usage

```objc
    // Parameters for the API call
    NSDate* enddate = [NSDate date];
    NSDate* fromdate = [NSDate date];
    int length = 183;
    int start = 183;

    [self.campaign getCampaignsAsyncWithEnddate: enddate fromdate : fromdate length : length start : start  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)



