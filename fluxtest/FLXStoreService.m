//
//  FLXStoreService.m
//  fluxtest
//
//  Created by kaiinui on 2014/10/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "FLXStoreService.h"

@interface FLXStoreService ()

@property (nonatomic, strong) NSMutableDictionary /* <NSString *, FLXStore *> */ *storeMap;

@end

@implementation FLXStoreService

+ (instancetype)service {
    static FLXStoreService *_instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[FLXStoreService alloc] init];
    });
    return _instance;
}

# pragma mark - LifeCyle

- (instancetype)init {
    self = [super init];
    if (self) {
        self.storeMap = [[NSMutableDictionary alloc] init];
    }
    return self;
}

# pragma mark - Public

- (void)addStore:(FLXStore *)store forKey:(NSString *)key {
    self.storeMap[key] = store;
}

- (FLXStore *)storeForKey:(NSString *)key {
    return self.storeMap[key];
}

@end
