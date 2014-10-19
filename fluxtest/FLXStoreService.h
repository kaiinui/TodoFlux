//
//  FLXStoreService.h
//  fluxtest
//
//  Created by kaiinui on 2014/10/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FLXStore.h"

@interface FLXStoreService : NSObject

+ (instancetype)service;

# pragma mark - Public

- (FLXStore *)storeForKey:(NSString *)key;
- (void)addStore:(FLXStore *)store forKey:(NSString *)key;

@end
