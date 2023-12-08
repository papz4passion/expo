// Copyright 2018-present 650 Industries. All rights reserved.

#import <EXNotifications/EXTopicsModule.h>
#import <EXNotifications/EXNotificationCenterDelegate.h>
@import FirebaseMessaging;

@implementation EXTopicsModule

EX_EXPORT_MODULE(ExpoTopicsModule)

# pragma mark - Exported methods

EX_EXPORT_METHOD_AS(registerToDefaultTopicsAsync,
                 registerToDefaultTopics: (NSArray *) topics
                 resolve:(EXPromiseResolveBlock)resolve
                 reject:(EXPromiseRejectBlock)reject)
{
    for (NSString* topic in topics) {
        [[FIRMessaging messaging] subscribeToTopic:topic];
    }
    resolve(nil);
}

EX_EXPORT_METHOD_AS(subscribeToTopicAsync,
                 subscribeToTopic:(NSString *)topic
                 resolve:(EXPromiseResolveBlock)resolve reject:(EXPromiseRejectBlock)reject)
{
    [[FIRMessaging messaging] subscribeToTopic:topic];
    resolve(nil);
  
}

EX_EXPORT_METHOD_AS(unsubscribeToTopicAsync,
                 unsubscribeToTopic:(NSString *)topic
                 resolve:(EXPromiseResolveBlock)resolve reject:(EXPromiseRejectBlock)reject)
{
    [[FIRMessaging messaging] unsubscribeFromTopic:topic];
    resolve(nil);
}


@end
