//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "UIView+Constraints.h"

@implementation UIView (Constraints)

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c
{
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:view1
                                                                  attribute:attr1
                                                                  relatedBy:relation
                                                                     toItem:view2
                                                                  attribute:attr2
                                                                 multiplier:multiplier
                                                                   constant:c];
    [self addConstraint:constraint];

    return constraint;
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                             relatedBy:relation
                                toItem:view2
                             attribute:attr2
                            multiplier:multiplier
                              constant:0];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                             relatedBy:relation
                                toItem:view2
                             attribute:attr2
                            multiplier:1.0
                              constant:c];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                             relatedBy:relation
                                toItem:view2
                             attribute:attr2
                            multiplier:1.0
                              constant:0];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 multiplier:(CGFloat)multiplier constant:(CGFloat)c
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                             relatedBy:relation
                                toItem:view2
                             attribute:attr1
                            multiplier:multiplier
                              constant:c];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 constant:(CGFloat)c
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                             relatedBy:relation
                                toItem:view2
                            multiplier:1.0
                              constant:c];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 multiplier:(CGFloat)multiplier
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                             relatedBy:relation
                                toItem:view2
                            multiplier:multiplier
                              constant:0];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                             relatedBy:relation
                                toItem:view2
                            multiplier:1.0
                              constant:0];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation multiplier:(CGFloat)multiplier constant:(CGFloat)c
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                             relatedBy:relation
                                toItem:self
                            multiplier:multiplier
                              constant:c];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation multiplier:(CGFloat)multiplier
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                             relatedBy:relation
                            multiplier:multiplier
                              constant:0];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation constant:(CGFloat)c
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                             relatedBy:relation
                            multiplier:1.0
                              constant:c];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                             relatedBy:relation
                            multiplier:1.0
                              constant:0];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                             relatedBy:NSLayoutRelationEqual
                                toItem:view2
                             attribute:attr2
                            multiplier:multiplier
                              constant:c];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                                toItem:view2
                             attribute:attr2
                            multiplier:multiplier
                              constant:0];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                                toItem:view2
                             attribute:attr2
                            multiplier:1.0
                              constant:c];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                                toItem:view2
                             attribute:attr2
                            multiplier:1.0
                              constant:0];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 toItem:(UIView *)view2 multiplier:(CGFloat)multiplier constant:(CGFloat)c
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                             relatedBy:NSLayoutRelationEqual
                                toItem:view2
                            multiplier:multiplier
                              constant:c];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 toItem:(UIView *)view2 multiplier:(CGFloat)multiplier
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                                toItem:view2
                            multiplier:multiplier
                              constant:0];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 toItem:(UIView *)view2 constant:(CGFloat)c
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                                toItem:view2
                            multiplier:1.0
                              constant:c];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 toItem:(UIView *)view2
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                                toItem:view2
                            multiplier:1.0
                              constant:0];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 multiplier:(CGFloat)multiplier constant:(CGFloat)c
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                             relatedBy:NSLayoutRelationEqual
                            multiplier:multiplier
                              constant:c];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 multiplier:(CGFloat)multiplier
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                            multiplier:multiplier
                              constant:0];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 constant:(CGFloat)c
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                            multiplier:1.0
                              constant:c];
}

- (NSLayoutConstraint *)addConstraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1
{
    return [self addConstraintWithItem:view1
                             attribute:attr1
                            multiplier:1.0
                              constant:0];
}

- (NSLayoutConstraint *)addConstraintWithAttribute:(NSLayoutAttribute)attr1 constant:(CGFloat)c
{
    return [self addConstraintWithItem:self
                             attribute:attr1
                              constant:c];
}

- (NSLayoutConstraint *)addConstraintWithAttribute:(NSLayoutAttribute)attr1 multiplier:(CGFloat)multiplier
{
    return [self addConstraintWithItem:self
                             attribute:attr1
                            multiplier:multiplier];
}

@end