//
//  FLXTodoStore.h
//  fluxtest
//
//  Created by kaiinui on 2014/10/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FLXStore.h"

@interface FLXTodoStore : FLXStore

@property (nonatomic, strong) NSMutableSet /* <FLXTodo *> */ *todoCollection;

@end
