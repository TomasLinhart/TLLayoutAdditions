//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "UIView+Resistance.h"

@implementation UIView (Resistance)

#pragma mark - Vertical

- (void)setHorizontalContentHuggingPriority:(UILayoutPriority)priority
{
    [self setContentHuggingPriority:priority forAxis:UILayoutConstraintAxisHorizontal];
}

- (void)setVerticalContentHuggingPriority:(UILayoutPriority)priority
{
    [self setContentHuggingPriority:priority forAxis:UILayoutConstraintAxisVertical];
}

#pragma mark - Horizontal

- (void)setHorizontalContentCompressionResistancePriority:(UILayoutPriority)priority
{
    [self setContentCompressionResistancePriority:priority forAxis:UILayoutConstraintAxisHorizontal];
}

- (void)setVerticalContentCompressionResistancePriority:(UILayoutPriority)priority
{
    [self setContentCompressionResistancePriority:priority forAxis:UILayoutConstraintAxisVertical];
}

@end