//
//  Theme.h
//  BabyCare
//
//  Created by yuanhua on 7/14/15.
//  Copyright (c) 2015 yuanhua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Theme : NSObject
+ (UIFont *)fontOfSize:(CGFloat)size;
+ (UIFont *)boldFontOfSize:(CGFloat)size;
+ (UIFont *)unitFont;
+ (UIColor *)textColor;
+ (UIColor *)colorWithAlpha:(CGFloat)alpha;
+ (UIColor *)backgroundColorWithAlpha:(CGFloat)alpha;
+ (UIColor *)borderColorWithAlpha:(CGFloat)alpha;
@end
