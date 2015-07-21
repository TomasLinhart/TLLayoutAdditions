//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "UIView+Edges.h"
#import "UIView+Constraints.h"
#import "UIView+Sizing.h"
#import "TLLayoutAdditions+ConstraintsConvenience.h"

@implementation UIView (Edges)

- (NSArray *)matchTopAndWidthWithView:(UIView *)view
{
    return [[self matchWidthWithView:view] arrayByAddingObject:[self matchTopWithView:view]];
}

- (NSArray *)matchBottomAndWidthWithView:(UIView *)view
{
    return [[self matchWidthWithView:view] arrayByAddingObject:[self matchBottomWithView:view]];
}

#pragma mark - Left

- (NSLayoutConstraint *)matchLeftWithView:(UIView *)view indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view attribute:NSLayoutAttributeLeft constant:indent];
}

- (NSLayoutConstraint *)matchLeftWithView:(UIView *)view indent:(CGFloat)indent priority:(UILayoutPriority)priority
{
    NSLayoutConstraint *constraint = [TLLayoutAdditions constraintWithItem:view attribute:NSLayoutAttributeLeft toItem:self constant:indent];
    constraint.priority = priority;
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)matchLeftWithView:(UIView *)view
{
    return [self matchLeftWithView:view indent:0];
}

- (NSLayoutConstraint *)matchLeftWithView:(UIView *)view1 toView:(UIView *)view2
{
    return [self matchLeftWithView:view1 toView:view2 indent:0];
}

- (NSLayoutConstraint *)matchLeftWithView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view1 attribute:NSLayoutAttributeLeft toItem:view2 constant:indent];
}

#pragma mark - Right

- (NSLayoutConstraint *)matchRightWithView:(UIView *)view indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view attribute:NSLayoutAttributeRight constant:-indent];
}

- (NSLayoutConstraint *)matchRightWithView:(UIView *)view indent:(CGFloat)indent priority:(UILayoutPriority)priority
{
    NSLayoutConstraint *constraint = [TLLayoutAdditions constraintWithItem:view attribute:NSLayoutAttributeRight toItem:self constant:-indent];
    constraint.priority = priority;
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)matchRightWithView:(UIView *)view
{
    return [self matchRightWithView:view indent:0];
}

- (NSLayoutConstraint *)matchRightWithView:(UIView *)view1 toView:(UIView *)view2
{
    return [self matchRightWithView:view1 toView:view2 indent:0];
}

- (NSLayoutConstraint *)matchRightWithView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view1 attribute:NSLayoutAttributeRight toItem:view2 constant:-indent];
}

#pragma mark - Top

- (NSLayoutConstraint *)matchTopWithView:(UIView *)view indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view attribute:NSLayoutAttributeTop constant:indent];
}

- (NSLayoutConstraint *)matchTopWithView:(UIView *)view indent:(CGFloat)indent priority:(UILayoutPriority)priority
{
    NSLayoutConstraint *constraint = [TLLayoutAdditions constraintWithItem:view attribute:NSLayoutAttributeTop toItem:self constant:indent];
    constraint.priority = priority;
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)matchTopWithView:(UIView *)view
{
    return [self matchTopWithView:view indent:0];
}

- (NSLayoutConstraint *)matchTopWithView:(UIView *)view1 toView:(UIView *)view2
{
    return [self matchTopWithView:view1 toView:view2 indent:0];
}

- (NSLayoutConstraint *)matchTopWithView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view1 attribute:NSLayoutAttributeTop toItem:view2 constant:indent];
}

#pragma mark - Bottom

- (NSLayoutConstraint *)matchBottomWithView:(UIView *)view indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view attribute:NSLayoutAttributeBottom constant:-indent];
}

- (NSLayoutConstraint *)matchBottomWithView:(UIView *)view indent:(CGFloat)indent priority:(UILayoutPriority)priority
{
    NSLayoutConstraint *constraint = [TLLayoutAdditions constraintWithItem:view attribute:NSLayoutAttributeBottom toItem:self constant:-indent];
    constraint.priority = priority;
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)matchBottomWithView:(UIView *)view
{
    return [self matchBottomWithView:view indent:0];
}

- (NSLayoutConstraint *)matchBottomWithView:(UIView *)view1 toView:(UIView *)view2
{
    return [self matchBottomWithView:view1 toView:view2 indent:0];
}

- (NSLayoutConstraint *)matchBottomWithView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent
{
    return [self addConstraintWithItem:view1 attribute:NSLayoutAttributeBottom toItem:view2 constant:-indent];
}

#pragma mark - Edges

#pragma mark - Vertical

- (NSArray *)matchVerticalEdgesWithView:(UIView *)view indent:(CGFloat)indent
{
    return @[
            [self matchTopWithView:view indent:indent],
            [self matchBottomWithView:view indent:indent]
    ];
}

- (NSArray *)matchVerticalEdgesWithView:(UIView *)view
{
    return [self matchVerticalEdgesWithView:view indent:0];
}

- (NSArray *)matchVerticalEdgesWithView:(UIView *)view1 toView:(UIView *)view2
{
    return [self matchVerticalEdgesWithView:view1 toView:view2 indent:0];
}

- (NSArray *)matchVerticalEdgesWithView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent
{
    return @[
            [self matchTopWithView:view1 toView:view2 indent:indent],
            [self matchBottomWithView:view1 toView:view2 indent:indent]
    ];
}

#pragma mark - Horizontal

- (NSArray *)matchHorizontalEdgesWithView:(UIView *)view indent:(CGFloat)indent
{
    return @[
            [self matchLeftWithView:view indent:indent],
            [self matchRightWithView:view indent:indent]
    ];
}

- (NSArray *)matchHorizontalEdgesWithView:(UIView *)view
{
    return [self matchHorizontalEdgesWithView:view indent:0];
}

- (NSArray *)matchHorizontalEdgesWithView:(UIView *)view1 toView:(UIView *)view2
{
    return [self matchHorizontalEdgesWithView:view1 toView:view2 indent:0];
}

- (NSArray *)matchHorizontalEdgesWithView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent
{
    return @[
            [self matchLeftWithView:view1 toView:view2 indent:indent],
            [self matchRightWithView:view1 toView:view2 indent:indent]
    ];
}

#pragma mark - All

- (NSArray *)matchEdgesWithView:(UIView *)view indent:(CGFloat)indent
{
    return [[self matchHorizontalEdgesWithView:view indent:indent]
            arrayByAddingObjectsFromArray:[self matchVerticalEdgesWithView:view indent:indent]];
}

- (NSArray *)matchEdgesWithView:(UIView *)view
{
    return [self matchEdgesWithView:view indent:0];
}

- (NSArray *)matchEdgesWithView:(UIView *)view1 toView:(UIView *)view2
{
    return [self matchEdgesWithView:view1 toView:view2 indent:0];
}

- (NSArray *)matchEdgesWithView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent
{
    return [[self matchHorizontalEdgesWithView:view1 toView:view2 indent:indent]
            arrayByAddingObjectsFromArray:[self matchVerticalEdgesWithView:view1 toView:view2 indent:indent]];
}

@end