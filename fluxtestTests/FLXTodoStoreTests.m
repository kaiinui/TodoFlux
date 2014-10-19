//
//  FLXTodoStoreTests.m
//  fluxtest
//
//  Created by kaiinui on 2014/10/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>

#define EXP_SHORTHAND
#import <Expecta.h>

#import "FLXTodoStore.h"
#import "FLXEventConst.h"
#import "FLXTodo.h"
#import "FLXConst.h"

@interface FLXTodoStoreTests : XCTestCase

@property FLXTodoStore *store;

@end

@implementation FLXTodoStoreTests

- (void)setUp {
    [super setUp];
    
    self.store = [FLXTodoStore store];
}

- (void)tearDown {
    [super tearDown];
    
    self.store = nil;
}

- (void)testItEmitsDidInsertItemsEvent {
    FLXTodo *todo = [[FLXTodo alloc] initWithSubject:@"Todo"];
    
    expect(^{
        [[NSNotificationCenter defaultCenter] postNotificationName:kFLXTodoActionAddEvent object:nil userInfo:@{kFLXDispatcherDispatchedObjectKey: todo}];
    }).will.notify(kFLXCollectionDidInsertItemsEventKey);
}

@end
