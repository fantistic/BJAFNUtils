//
//  BaseModel.m
//  公司项目
//
//  Created by wangyun on 15/12/12.
//  Copyright © 2015年 wangyun. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

- (instancetype)initWithDic:(NSDictionary *)dic{
    self = [super init];
    if (self) {
        if ([dic isKindOfClass:[NSDictionary class]] || [dic isKindOfClass:[NSMutableDictionary class]]) {
            [self setValuesForKeysWithDictionary:dic];
        }
    }
    return self;
}

/**
 *  KVC的纠错方法
 *
 *  @param value 未找到的key对应的值
 *  @param key   字典中未找到的key
 */
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    if ([key isEqualToString:@"id"]) {
        self.uId = value;
    }
    if ([key isEqualToString:@"default"]) {
        self.Default = value;
    }
}


+ (NSMutableArray *)baseModelByArr:(NSArray *)arr{
    NSMutableArray *modelArr = [NSMutableArray array];
    
    if (![arr isKindOfClass:[NSNull class]]) {
        for (NSDictionary *dic in arr) {
            @autoreleasepool {
                id model = [[self class] baseModelWithDic:dic];
                [modelArr addObject:model];
            }
        }

    }
       return modelArr;
}


#pragma mark 遍历构造器方法用来创建对象
+ (instancetype)baseModelWithDic:(NSDictionary *)dic{
    //采用多态的方式进行对象创建
    id model = [[[self class] alloc] initWithDic:dic];
    return model;
}



@end
