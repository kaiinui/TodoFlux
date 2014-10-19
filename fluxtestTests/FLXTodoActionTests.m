//
//  FLXTodoActionTests.m
//  fluxtest
//
//  Created by kaiinui on 2014/10/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>

#define EXP_SHORTHAND
#import <Expecta.h>

#import "FLXTodoAction.h"
#import "FLXTodoDispatcher.h"
#import "FLXEventConst.h"
#import "FLXConst.h"
#import "FLXTodo.h"

@interface FLXTodoAction ()

@property (nonatomic, strong) FLXTodoDispatcher *dispatcher;

@end

@interface FLXTodoActionTests : XCTestCase

@end

@implementation FLXTodoActionTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testItPostsAddEventNotification {
    expect(^{
        [[[FLXTodoAction alloc] init] addTodoWithSubject:@"Some Todo"];
    }).to.notify(kFLXTodoActionAddEvent);
}

@end
