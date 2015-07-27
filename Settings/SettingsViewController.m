//
//  SettingsViewController.m
//  BabyCare
//
//  Created by Chuang HsuanChih on 7/15/15.
//  Copyright (c) 2015 Hsuan-Chih Chuang. All rights reserved.
//

#import "SettingsViewController.h"
#import "Theme.h"

static NSString * const kMenuItemClass = @"kMenuItemClass";
static NSString * const kMenuItemImage = @"kMenuItemImage";
static NSString * const kMenuItemTitle = @"kMenuItemTitle";

@interface SettingsViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *tableEntries;
@property (nonatomic, strong) UIButton *signoutButton;
@property (nonatomic, strong) UIBarButtonItem *signoutButtonItem;
@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = NSLocalizedString(@"设置", nil);
    self.navigationItem.rightBarButtonItem = self.signoutButtonItem;
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



#pragma mark - UITableView delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50.0;
}

-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return section * 40.0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}



#pragma mark - UITableView datasource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"SettingsTableViewCellID"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"SettingsTableViewCellID"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
        cell.backgroundColor = [Theme backgroundColorWithAlpha:1];
        cell.textLabel.font = [Theme boldFontOfSize:13.0];
        cell.textLabel.textColor = [Theme textColor];
    }
    
    NSDictionary *entry = [[self.tableEntries objectAtIndex:[indexPath section]] objectAtIndex:[indexPath row]];
    cell.textLabel.text = entry[kMenuItemTitle];
    UIImage *image = [UIImage imageNamed:entry[kMenuItemImage]];
    cell.imageView.image = image;
    
    return cell;
}


#pragma mark - Private utilities

- (void) buttonTapped:(id)sender
{
    if ( sender == self.signoutButtonItem )
    {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"SettingsViewControllerWillSignOutNotification"
                                                            object:self];
    }
}


#pragma mark - Property accessors

- (NSArray*) tableEntries
{
    if (_tableEntries == nil)
    {
        _tableEntries = @[ @[ @{kMenuItemImage:@"settings_password",
                                kMenuItemTitle:NSLocalizedString(@"修改密码", nil),
                                kMenuItemClass:@"SettingsViewController"},
                          
                              @{kMenuItemImage:@"settings_list",
                                kMenuItemTitle:NSLocalizedString(@"孩子们", nil),
                                kMenuItemClass:@"SettingsViewController"},
                          
                              @{kMenuItemImage:@"settings_notification",
                                kMenuItemTitle:NSLocalizedString(@"消息提醒", nil),
                                kMenuItemClass:@"SettingsViewController"},
                          
                              @{kMenuItemImage:@"settings_camera",
                                kMenuItemTitle:NSLocalizedString(@"照片分享", nil),
                                kMenuItemClass:@"SettingsViewController"}],
                           @[
                               @{kMenuItemImage:@"settings_share",
                                 kMenuItemTitle:NSLocalizedString(@"分享到朋友圈", nil),
                                 kMenuItemClass:@"SettingsViewController"},
                               
                               @{kMenuItemImage:@"settings_feedback",
                                 kMenuItemTitle:NSLocalizedString(@"反馈", nil),
                                 kMenuItemClass:@"SettingsViewController"},
                               
                               @{kMenuItemImage:@"settings_monitor",
                                 kMenuItemTitle:NSLocalizedString(@"更新", nil),
                                 kMenuItemClass:@"SettingsViewController"},
                               
                               @{kMenuItemImage:@"settings_about",
                                 kMenuItemTitle:NSLocalizedString(@"关于", nil),
                                 kMenuItemClass:@"SettingsViewController"}]
                           ];
        
    }
    return _tableEntries;
}

- (UIBarButtonItem*) signoutButtonItem
{
    if (_signoutButtonItem == nil)
    {
        _signoutButtonItem = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"注销", nil)
                                                              style:UIBarButtonItemStylePlain
                                                             target:self
                                                             action:@selector(buttonTapped:)];
    }
    return _signoutButtonItem;
}

@end
