//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "UIView+Centering.h"
#import "UIView+Constraints.h"

@implementation UIView (Centering)

- (NSArray *)centerInMiddleView:(UIView *)view
{
    return @[
            [self centerHorizontallyView:view],
            [self centerVerticallyView:view]
    ];
}

- (NSLayoutConstraint *)centerHorizontallyView:(UIView *)view indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view attribute:NSLayoutAttributeCenterX constant:indent];
}

- (NSLayoutConstraint *)centerHorizontallyView:(UIView *)view
{
    return [self addConstraintWithItem:view attribute:NSLayoutAttributeCenterX];
}

- (NSLayoutConstraint *)centerVerticallyView:(UIView *)view indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view attribute:NSLayoutAttributeCenterY constant:indent];
}

- (NSLayoutConstraint *)centerVerticallyView:(UIView *)view
{
    return [self addConstraintWithItem:view attribute:NSLayoutAttributeCenterY];
}

@end