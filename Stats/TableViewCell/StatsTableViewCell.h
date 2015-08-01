//
//  StatsTableViewCell.h
//  BabyCare
//
//  Created by yuanhua on 7/19/15.
//  Copyright (c) 2015 yuanhua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StatsTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *timeLabel;
@property (nonatomic, weak) IBOutlet UILabel *dayLabel;
@property (nonatomic, weak) IBOutlet UILabel *dataLabel;
@end
