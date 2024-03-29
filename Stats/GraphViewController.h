//
//  GraphViewController.h
//  BabyCare
//
//  Created by yuanhua on 7/19/15.
//  Copyright (c) 2015 yuanhua. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CorePlot-CocoaTouch.h"
#import "SensorData.h"
#import "FPRange.h"

@interface GraphViewController : UIViewController
<CPTPlotDataSource, CPTScatterPlotDataSource, CPTScatterPlotDelegate>
@property (nonatomic, strong) NSString *graphTitle;
@property (nonatomic, strong) NSString *xTitle, *yTitle;
@property (nonatomic, assign) NSRange xRange, yRange;
@property (nonatomic, strong) NSArray *graphData;
@property (nonatomic, assign) CGFloat yAxisInterval;
@property (nonatomic, strong) UIColor *lineColor;
@property (nonatomic, strong) CPTPlotSymbol *plotSymbol;

- (id) initWithGraphType:(GraphType)graphType;
- (void) launchPlot;
- (void) reloadPlotData;
- (void) setNormalRange:(FPRange)range;
- (void) setSectorRanges;
@end
