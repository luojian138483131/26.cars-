//
//  car.h
//  26.cars数组
//
//  Created by 罗鲣 on 15/8/2.
//  Copyright (c) 2015年 罗鲣. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface car : NSObject
@property(nonatomic,copy)NSString*name;
@property(nonatomic,copy)NSString*icon;



- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)carWithDict:(NSDictionary *)dict;



// 传入一个包含字典的数组，返回一个car模型的数组
+ (NSArray *)carWithArray:(NSArray*)array;



@end
