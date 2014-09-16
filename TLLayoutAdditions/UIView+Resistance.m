//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "UIView+Resistance.h"

@implementation UIView (Resistance)

#pragma mark - Vertical

- (UILayoutPriority)horizontalContentHuggingPriority
{
    return [self contentHuggingPriorityForAxis:UILayoutConstraintAxisHorizontal];
}

- (UILayoutPriority)verticalContentHuggingPriority
{
    return [self contentHuggingPriorityForAxis:UILayoutConstraintAxisVertical];
}

- (void)setHorizontalContentHuggingPriority:(UILayoutPriority)priority
{
    [self setContentHuggingPriority:priority forAxis:UILayoutConstraintAxisHorizontal];
}

- (void)setVerticalContentHuggingPriority:(UILayoutPriority)priority
{
    [self setContentHuggingPriority:priority forAxis:UILayoutConstraintAxisVertical];
}

#pragma mark - Horizontal

- (UILayoutPriority)horizontalContentCompressionResistancePriority
{
    return [self contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisHorizontal];
}

- (UILayoutPriority)verticalContentCompressionResistancePriority
{
    return [self contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisVertical];
}

- (void)setHorizontalContentCompressionResistancePriority:(UILayoutPriority)priority
{
    [self setContentCompressionResistancePriority:priority forAxis:UILayoutConstraintAxisHorizontal];
}

- (void)setVerticalContentCompressionResistancePriority:(UILayoutPriority)priority
{
    [self setContentCompressionResistancePriority:priority forAxis:UILayoutConstraintAxisVertical];
}

@end