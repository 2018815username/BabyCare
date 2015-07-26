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

@property (nonatomic, retain) NSDate * creationTime;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * content;
@property (nonatomic, retain) NSNumber *hasImage;
@property (nonatomic, retain) NSNumber *imageWidth;
@property (nonatomic, retain) NSNumber *imageHeight;

@end
