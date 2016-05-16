//
//  BaseModel.h
//  公司项目
//
//  Created by wangyun on 15/12/12.
//  Copyright © 2015年 wangyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject

/**
 *  KVC的初始化方法
 *
 *  @param dic 数据字典
 *
 *  @return
 */
- (instancetype)initWithDic:(NSDictionary *)dic;

@property(nonatomic,copy)NSString *uId;
@property (nonatomic, copy) NSString *Default;

+ (NSMutableArray *)baseModelByArr:(NSArray *)arr;


@end
