//
//  FLXTodo.h
//  fluxtest
//
//  Created by kaiinui on 2014/10/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FLXTodo : NSObject

@property (nonatomic, copy) NSString *subject;

- (instancetype)initWithSubject:(NSString *)subject;

@end
