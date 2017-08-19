//
//  Cargroup.h
//  26.cars数组
//
//  Created by 罗鲣 on 15/8/2.
//  Copyright (c) 2015年 罗鲣. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cargroup : NSObject
@property (nonatomic, strong) NSArray *cars;
@property(nonatomic,copy)NSString*title;






- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)carGroupWithDict:(NSDictionary *)dict;

+ (NSArray *)carGroups;

@end
