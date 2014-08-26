//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (RegularConvenience)

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier;
+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c;
+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2;

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 multiplier:(CGFloat)multiplier constant:(CGFloat)c;
+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 multiplier:(CGFloat)multiplier;
+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2 constant:(CGFloat)c;
+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation toItem:(UIView *)view2;

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation multiplier:(CGFloat)multiplier constant:(CGFloat)c;
+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation multiplier:(CGFloat)multiplier;
+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 relatedBy:(NSLayoutRelation)relation constant:(CGFloat)c;

+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 multiplier:(CGFloat)multiplier constant:(CGFloat)c;
+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 multiplier:(CGFloat)multiplier;
+ (instancetype)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 constant:(CGFloat)c;

@end