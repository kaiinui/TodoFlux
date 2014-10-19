//
//  FLXTodoAction.m
//  fluxtest
//
//  Created by kaiinui on 2014/10/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "FLXTodoAction.h"

#import "FLXTodoDispatcher.h"
#import "FLXTodo.h"
#import "FLXEventConst.h"

@interface FLXTodoAction ()

@property (nonatomic, strong) FLXTodoDispatcher *dispatcher;

@end

@implementation FLXTodoAction

- (instancetype)init {
    self = [super init];
    if (self) {
        self.dispatcher = [[FLXTodoDispatcher alloc] init];
    }
    return self;
}

# pragma mark - Actions

/**
 *  @const
 */
- (void)addTodoWithSubject:(NSString *)subject {
    FLXTodo *todo = [[FLXTodo alloc] initWithSubject:subject];
    [self.dispatcher dispatch:todo withEventName:kFLXTodoActionAddEvent];
}


@end
