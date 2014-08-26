//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "NSLayoutConstraint+RegularConvenience.h"

@implementation NSLayoutConstraint (RegularConvenience)

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier
{
    return [NSLayoutConstraint constraintWithItem:view1 attribute:attr1 relatedBy:relation toItem:view2 attribute:attr2 multiplier:multiplier constant:0];
}

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c
{
    return [NSLayoutConstraint constraintWithItem:view1 attribute:attr1 relatedBy:relation toItem:view2 attribute:attr2 multiplier:1.0 constant:c];
}

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2
{
    return [NSLayoutConstraint constraintWithItem:view1 attribute:attr1 relatedBy:relation toItem:view2 attribute:attr2 multiplier:1.0 constant:0];
}

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 multiplier:(CGFloat)multiplier constant:(CGFloat)c
{
    return [NSLayoutConstraint constraintWithItem:view1 attribute:attr1 relatedBy:relation toItem:view2 attribute:attr1 multiplier:multiplier constant:c];
}

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 multiplier:(CGFloat)multiplier
{
    return [NSLayoutConstraint constraintWithItem:view1 attribute:attr1 relatedBy:relation toItem:view2 multiplier:multiplier constant:0];
}

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 constant:(CGFloat)c
{
    return [NSLayoutConstraint constraintWithItem:view1 attribute:attr1 relatedBy:relation toItem:view2 multiplier:1.0 constant:c];
}

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2
{
    return [NSLayoutConstraint constraintWithItem:view1 attribute:attr1 relatedBy:relation toItem:view2 multiplier:1.0 constant:0];
}

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation multiplier:(CGFloat)multiplier constant:(CGFloat)c
{
    return [NSLayoutConstraint constraintWithItem:view1 attribute:attr1 relatedBy:relation toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:multiplier constant:c];
}

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation multiplier:(CGFloat)multiplier
{
    return [NSLayoutConstraint constraintWithItem:view1 attribute:attr1 relatedBy:relation multiplier:multiplier constant:0];
}

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation constant:(CGFloat)c
{
    return [NSLayoutConstraint constraintWithItem:view1 attribute:attr1 relatedBy:relation multiplier:1.0 constant:c];
}

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 multiplier:(CGFloat)multiplier constant:(CGFloat)c
{
    return [NSLayoutConstraint constraintWithItem:view1 attribute:attr1 relatedBy:NSLayoutRelationEqual multiplier:multiplier constant:c];
}

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 multiplier:(CGFloat)multiplier
{
    return [NSLayoutConstraint constraintWithItem:view1 attribute:attr1 multiplier:multiplier constant:0];
}

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 constant:(CGFloat)c
{
    return [NSLayoutConstraint constraintWithItem:view1 attribute:attr1 multiplier:1.0 constant:c];
}

@end