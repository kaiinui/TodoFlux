//
//  FLXTodoStore.m
//  fluxtest
//
//  Created by kaiinui on 2014/10/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "FLXTodoStore.h"
#import "FLXEventConst.h"
#import "FLXConst.h"

#import "FLXTodo.h"

@interface FLXTodoStore ()

@end

@implementation FLXTodoStore

- (instancetype)init {
    self = [super init];
    if (self) {
        [self startObservation];
    }
    return self;
}

- (void)startObservation {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(addTodoObserver:) name:kFLXTodoActionAddEvent object:nil];
}

# pragma mark - Notification Observers

- (void)addTodoObserver:(NSNotification *)notification {
    FLXTodo *todo = notification.userInfo[kFLXDispatcherDispatchedObjectKey];
    [self.todoCollection addObject:todo];
    
    // Event
    NSDictionary *userInfo = @{
                               kFLXCollectionDidInsertItemsEventInsertedItemsKey: @[todo]
                               };
    [[NSNotificationCenter defaultCenter] postNotificationName:kFLXCollectionDidInsertItemsEventKey object:self.todoCollection userInfo:userInfo];
}

@end
