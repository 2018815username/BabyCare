//
//  DiaryEntry.h
//  BabyCare
//
//  Created by yuanhua on 7/20/15.
//  Copyright (c) 2015 yuanhua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface DiaryEntry : NSManagedObject

//创建时间
@property (nonatomic, retain) NSDate *creationTime;
//标题
@property (nonatomic, retain) NSString *title;
//内容
@property (nonatomic, retain) NSString *content;
//是不是有图片
@property (nonatomic, retain) NSNumber *hasImage;
//图片的长
@property (nonatomic, retain) NSNumber *imageWidth;
//图片的宽
@property (nonatomic, retain) NSNumber *imageHeight;

@end
