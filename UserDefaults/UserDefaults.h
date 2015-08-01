//
//  UserDefaults.h
//  BabyCare
//
//  Created by  yuanhua on 7/21/15.
//  Copyright (c) 2015年 yuanhua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserDefaults : NSObject
/**
 保存登录信息
 */
+ (void) saveObject:(id)object key:(NSString *)key;
/**
 加载保存的登录信息
 */
+ (id) loadObjectWithKey:(NSString *)key;
@end
