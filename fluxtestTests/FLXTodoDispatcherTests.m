//
//  FLXTodoDispatcherTests.m
//  fluxtest
//
//  Created by kaiinui on 2014/10/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>

#define EXP_SHORTHAND
#import <Expecta.h>

#import "FLXTodoDispatcher.h"
#import "FLXConst.h"

@interface FLXTodoDispatcherTests : XCTestCase

@end

@implementation FLXTodoDispatcherTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testItPostsNotificationWithGivenEventName {
    FLXTodoDispatcher *dispatcher = [[FLXTodoDispatcher alloc] init];
    
    expect(^{
        [dispatcher dispatch:@"SomeObject" withEventName:@"SomeEvent"];
    }).to.notify(@"SomeEvent");
}

- (void)testItPostsNotificationWithGivenObject {
    FLXTodoDispatcher *dispathcer = [[FLXTodoDispatcher alloc] init];
    
    NSNotification *expectedNotification = [[NSNotification alloc] initWithName:@"SomeEvent" object:nil userInfo:@{kFLXDispatcherDispatchedObjectKey: @"SomeObject"}];
    
    expect(^{
        [dispathcer dispatch:@"SomeObject" withEventName:@"SomeEvent"];
    }).to.notify(expectedNotification);
}

@end
