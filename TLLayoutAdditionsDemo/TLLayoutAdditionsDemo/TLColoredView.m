//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "TLColoredView.h"

@implementation TLColoredView

- (id)init
{
    return [self initWithColor:[UIColor blueColor]];
}

- (id)initWithFrame:(CGRect)frame
{
    return [self initWithColor:[UIColor blueColor]];
}

- (instancetype)initWithColor:(UIColor *)color;
{
    self = [super initWithFrame:CGRectZero];
    if (self) {
        self.backgroundColor = color;
    }

    return self;
}

+ (instancetype)viewWithColor:(UIColor *)color
{
    return [[TLColoredView alloc] initWithColor:color];
}

- (CGSize)intrinsicContentSize
{
    return CGSizeMake(20, UIViewNoIntrinsicMetric);
}

@end