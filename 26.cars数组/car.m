//
//  car.m
//  26.cars数组
//
//  Created by 罗鲣 on 15/8/2.
//  Copyright (c) 2015年 罗鲣. All rights reserved.
//

#import "car.h"

@implementation car

- (instancetype)initWithDict:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)carWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

+ (NSArray *)carWithArray:(NSArray *)array
{
   
    
    NSMutableArray *arrayM = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        [arrayM addObject:[self carWithDict:dict]];
    }
    
    return arrayM;
}




@end
