//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TLLayoutAdditions.h"

@interface TLLayoutAdditions (ConstraintsConvenience)

+ (NSLayoutConstraint *)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier;

+ (NSLayoutConstraint *)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c;

+ (NSLayoutConstraint *)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2;

+ (NSLayoutConstraint *)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 multiplier:(CGFloat)multiplier constant:(CGFloat)c;

+ (NSLayoutConstraint *)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 multiplier:(CGFloat)multiplier;

+ (NSLayoutConstraint *)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 constant:(CGFloat)c;

+ (NSLayoutConstraint *)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2;

+ (NSLayoutConstraint *)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation multiplier:(CGFloat)multiplier constant:(CGFloat)c;

+ (NSLayoutConstraint *)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation multiplier:(CGFloat)multiplier;

+ (NSLayoutConstraint *)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation constant:(CGFloat)c;

+ (NSLayoutConstraint *)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 multiplier:(CGFloat)multiplier constant:(CGFloat)c;

+ (NSLayoutConstraint *)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 multiplier:(CGFloat)multiplier;

+ (NSLayoutConstraint *)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 constant:(CGFloat)c;

@end