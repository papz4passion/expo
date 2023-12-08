// Copyright 2018-present 650 Industries. All rights reserved.

#import <ExpoModulesCore/EXExportedModule.h>
#import <ExpoModulesCore/EXEventEmitter.h>
#import <ExpoModulesCore/EXModuleRegistryConsumer.h>

@interface EXTopicsModule : EXExportedModule

- (void)registerToDefaultTopics: (NSArray *) topics
                                        resolve:(EXPromiseResolveBlock)resolve
                                        reject:(EXPromiseRejectBlock)reject;
- (void)subscribeToTopic:(NSString *) topic
                                        resolve:(EXPromiseResolveBlock)resolve 
                                        reject:(EXPromiseRejectBlock)reject;
- (void)unsubscribeToTopic:(NSString *) topic
                                        resolve:(EXPromiseResolveBlock)resolve 
                                        reject:(EXPromiseRejectBlock)reject;


@end
