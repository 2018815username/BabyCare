//
//  UIViewController+Containment.m
//  BabyCare
//
//  Created by yuanhua on 7/14/15.
//  Copyright (c) 2015 yuanhua. All rights reserved.
//

#import "UIViewController+Containment.h"

@implementation UIViewController (Containment)

- (void) displayViewController:(UIViewController*)viewcontroller inView:(UIView*)view withFrame:(CGRect)frame
{
    [self addChildViewController:viewcontroller];
    viewcontroller.view.frame = frame;
    [view addSubview:viewcontroller.view];
    [viewcontroller didMoveToParentViewController:self];
}

- (void) hideViewController:(UIViewController*)viewcontroller
{
    if ([[self childViewControllers] containsObject:viewcontroller]) {
        [viewcontroller willMoveToParentViewController:nil];
        [viewcontroller.view removeFromSuperview];
        [viewcontroller removeFromParentViewController];
    }
}

@end
