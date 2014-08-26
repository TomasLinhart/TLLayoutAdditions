//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "UIView+Sizing.h"
#import "UIView+Constraints.h"

@implementation UIView (Sizing)

- (NSArray *)matchSizeWithView:(UIView *)view toSize:(CGSize)size
{
    return @[
            [self matchWidthSizeWithView:view toSize:size.width],
            [self matchHeightSizeWithView:view toSize:size.height],
    ];
}

- (NSLayoutConstraint *)matchHeightSizeWithView:(UIView *)view toSize:(CGFloat)size
{
    return [self addConstraintWithItem:view attribute:NSLayoutAttributeHeight constant:size];
}

- (NSLayoutConstraint *)matchWidthSizeWithView:(UIView *)view toSize:(CGFloat)size
{
    return [self addConstraintWithItem:view attribute:NSLayoutAttributeWidth constant:size];
}

- (NSArray *)matchSizeWithView:(UIView *)view1 toView:(UIView *)view2
{
    return @[
            [self matchWidthSizeWithView:view1 toView:view2],
            [self matchHeightSizeWithView:view1 toView:view2]
    ];
}

- (NSLayoutConstraint *)matchWidthSizeWithView:(UIView *)view1 toView:(UIView *)view2
{
    return [self addConstraintWithItem:view1 attribute:NSLayoutAttributeWidth toItem:view2];
}

- (NSLayoutConstraint *)matchHeightSizeWithView:(UIView *)view1 toView:(UIView *)view2
{
    return [self addConstraintWithItem:view1 attribute:NSLayoutAttributeHeight toItem:view2];
}

- (NSArray *)matchSizeWithView:(UIView *)view
{
    return [[self matchWidthWithView:view] arrayByAddingObjectsFromArray:[self matchHeightWithView:view]];
}

- (NSArray *)matchWidthWithView:(UIView *)view
{
    return @[
            [self addConstraintWithItem:view attribute:NSLayoutAttributeWidth],
            [self addConstraintWithItem:view attribute:NSLayoutAttributeLeft],
            [self addConstraintWithItem:view attribute:NSLayoutAttributeRight]
    ];
}

- (NSArray *)matchHeightWithView:(UIView *)view
{
    return @[
            [self addConstraintWithItem:view attribute:NSLayoutAttributeHeight],
            [self addConstraintWithItem:view attribute:NSLayoutAttributeTop],
            [self addConstraintWithItem:view attribute:NSLayoutAttributeBottom]
    ];
}

@end