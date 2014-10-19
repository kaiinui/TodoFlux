//
//  FLXDispatcher.m
//  fluxtest
//
//  Created by kaiinui on 2014/10/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "FLXDispatcher.h"
#import "FLXConst.h"

@implementation FLXDispatcher

# pragma mark - Public

/**
 *  @const
 */
- (void)dispatch:(NSObject *)object withEventName:(NSString *)event {
    NSLog(@"%@", event);
    
    NSDictionary *userInfo = [self userInfoWithDispatchedObject:object];
    [[NSNotificationCenter defaultCenter] postNotificationName:event object:nil userInfo:userInfo];
}

# pragma mark - Helpers

/**
 *  @const
 */
- (NSDictionary *)userInfoWithDispatchedObject:(NSObject *)object {
    return @{
             kFLXDispatcherDispatchedObjectKey: object
             };
}

@end
