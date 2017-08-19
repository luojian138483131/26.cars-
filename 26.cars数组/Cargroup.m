//
//  Cargroup.m
//  26.cars数组
//
//  Created by 罗鲣 on 15/8/2.
//  Copyright (c) 2015年 罗鲣. All rights reserved.
//

#import "Cargroup.h"
#import "car.h"

@implementation Cargroup

- (instancetype)initWithDict:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        [self setValue:dict[@"title"] forKey:@"title"];
        
        // 希望将字典的数组转换成Car模型的数组
        self.cars=[car carWithArray:dict[@"cars"]] ;//carWithArray:  该方法总会被调用  对于不嵌套的在viewcontroller转为模型就好 ,对于嵌套的，在嵌套的里面转换
        
   
        
 
    }
    return self;
}

+ (instancetype)carGroupWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

+ (NSArray *)carGroups
{
    NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cars_total.plist" ofType:nil]];
    
    NSMutableArray *arrayM = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        [arrayM addObject:[self carGroupWithDict:dict]];
    }
    
    return arrayM;
}




@end
