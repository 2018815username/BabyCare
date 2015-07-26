//
//  UserDefaults.h
//  BabyCare
//
//  Created by  yuanhua on 7/21/15.
//  Copyright (c) 2015年 yuanhua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserDefaults : NSObject
+ (void) saveObject:(id)object key:(NSString *)key;
+ (id) loadObjectWithKey:(NSString *)key;
@end
