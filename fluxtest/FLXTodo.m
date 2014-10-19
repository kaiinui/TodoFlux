//
//  FLXTodo.m
//  fluxtest
//
//  Created by kaiinui on 2014/10/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "FLXTodo.h"

@implementation FLXTodo

- (instancetype)initWithSubject:(NSString *)subject {
    self = [super init];
    if (self) {
        self.subject = subject;
    }
    return self;
}

@end
