//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "UIView+Spacing.h"
#import "UIView+Constraints.h"

@implementation UIView (Spacing)

- (NSLayoutConstraint *)addVerticalSpacingBetweenView:(UIView *)view1 view:(UIView *)view2 indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view1 attribute:NSLayoutAttributeBottom toItem:view2 attribute:NSLayoutAttributeTop constant:-indent];
}

- (NSLayoutConstraint *)addVerticalSpacingBetweenView:(UIView *)view1 view:(UIView *)view2
{
    return [self addVerticalSpacingBetweenView:view1 view:view2 indent:0];
}

- (NSLayoutConstraint *)addHorizontalSpacingBetweenView:(UIView *)view1 view:(UIView *)view2 indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view1 attribute:NSLayoutAttributeRight toItem:view2 attribute:NSLayoutAttributeLeft constant:-indent];
}

- (NSLayoutConstraint *)addHorizontalSpacingBetweenView:(UIView *)view1 view:(UIView *)view2
{
    return [self addHorizontalSpacingBetweenView:view1 view:view2 indent:0];
}

@end