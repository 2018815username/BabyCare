//
//  DiaryListTableViewCell.h
//  BabyCare
//
//  Created by yuanhua on 7/19/15.
//  Copyright (c) 2015 yuanhua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DiaryListTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *dayLabel;
@property (nonatomic, weak) IBOutlet UILabel *timeLabel;
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *contentLabel;
@property (nonatomic, weak) IBOutlet UIImageView *cellImageView;
@end
