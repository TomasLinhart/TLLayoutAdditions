//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "TLDemoViewController.h"
#import "TLLinearLayoutView.h"
#import "TLColoredView.h"
#import "UIView+Sizing.h"
#import "UIView+Edges.h"

@implementation TLDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    TLLinearLayoutView *linearLayout = [[TLLinearLayoutView alloc] init];
    [linearLayout addSubview:[TLColoredView viewWithColor:[UIColor redColor]]];
    [linearLayout addSubview:[TLColoredView viewWithColor:[UIColor greenColor]]];
    [linearLayout addSubview:[TLColoredView viewWithColor:[UIColor purpleColor]]];
    [linearLayout addSubview:[TLColoredView viewWithColor:[UIColor yellowColor]]];
    [linearLayout addSubview:[TLColoredView viewWithColor:[UIColor brownColor]]];

    [self.view addSubview:linearLayout];

    linearLayout.orientation = TLLinearLayoutViewOrientationHorizontal;

    [self.view matchLeftWithView:linearLayout];
    [self.view matchHeightWithView:linearLayout];
    [self.view matchTopWithView:linearLayout];
}

@end