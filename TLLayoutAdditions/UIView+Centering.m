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

- (NSLayoutConstraint *)centerHorizontallyView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view1 attribute:NSLayoutAttributeCenterX toItem:view2 constant:indent];
}

- (NSLayoutConstraint *)centerHorizontallyView:(UIView *)view1 toView:(UIView *)view2
{
    return [self centerHorizontallyView:view1 toView:view2 indent:0];
}

- (NSLayoutConstraint *)centerHorizontallyView:(UIView *)view indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view attribute:NSLayoutAttributeCenterX constant:indent];
}

- (NSLayoutConstraint *)centerHorizontallyView:(UIView *)view
{
    return [self addConstraintWithItem:view attribute:NSLayoutAttributeCenterX];
}

- (NSLayoutConstraint *)centerVerticallyView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view1 attribute:NSLayoutAttributeCenterY toItem:view2 constant:indent];
}

- (NSLayoutConstraint *)centerVerticallyView:(UIView *)view1 toView:(UIView *)view2
{
    return [self centerVerticallyView:view1 toView:view2 indent:0];
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