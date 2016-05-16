//
//  XiMaLaYa.h
//  BJAFNUtils
//
//  Created by zbj on 16/5/16.
//  Copyright © 2016年 zbj. All rights reserved.
//

#import "BaseModel.h"

@interface XiMaLaYa : BaseModel

@property (nonatomic, assign) NSInteger id;

@property (nonatomic, assign) NSInteger orderNum;

@property (nonatomic, assign) BOOL filterSupported;

@property (nonatomic, assign) BOOL isChecked;

@property (nonatomic, assign) BOOL isFinished;

@property (nonatomic, copy) NSString *contentType;

@property (nonatomic, assign) BOOL isPaid;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) BOOL selectedSwitch;

@property (nonatomic, assign) NSInteger categoryType;

@property (nonatomic, copy) NSString *coverPath;

@property (nonatomic, copy) NSString *name;

@end

