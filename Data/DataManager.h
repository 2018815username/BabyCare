//
//  DataManager.h
//  BabyCare
//
//  Created by yuanhua on 7/16/15.
//  Copyright (c) 2015 yuanhua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NSDate+CupertinoYankee.h"
#import "FPRange.h"

@interface DataManager : NSObject
+ (instancetype) manager;
@property (nonatomic, strong) NSArray *realtimeData, *historicData;
- (FPRange) rangeForDataType:(NSUInteger)dataType;
- (NSTimeInterval) birthday;
- (void) resetBirthday;
@end
