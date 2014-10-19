//
//  FLXDispatcher.h
//  fluxtest
//
//  Created by kaiinui on 2014/10/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import <Foundation/Foundation.h>

# pragma mark - Interface

@interface FLXDispatcher : NSObject

/**
 *  @public
 */
- (void)dispatch:(NSObject *)object withEventName:(NSString *)event;

@end
