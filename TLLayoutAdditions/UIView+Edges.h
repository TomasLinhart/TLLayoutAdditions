//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (Edges)

- (NSLayoutConstraint *)matchLeftWithView:(UIView *)view indent:(CGFloat)indent;
- (NSLayoutConstraint *)matchLeftWithView:(UIView *)view;
- (NSLayoutConstraint *)matchLeftWithView:(UIView *)view1 toView:(UIView *)view2;
- (NSLayoutConstraint *)matchLeftWithView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent;

- (NSLayoutConstraint *)matchRightWithView:(UIView *)view indent:(CGFloat)indent;
- (NSLayoutConstraint *)matchRightWithView:(UIView *)view;
- (NSLayoutConstraint *)matchRightWithView:(UIView *)view1 toView:(UIView *)view2;
- (NSLayoutConstraint *)matchRightWithView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent;

- (NSLayoutConstraint *)matchTopWithView:(UIView *)view indent:(CGFloat)indent;
- (NSLayoutConstraint *)matchTopWithView:(UIView *)view;
- (NSLayoutConstraint *)matchTopWithView:(UIView *)view1 toView:(UIView *)view2;
- (NSLayoutConstraint *)matchTopWithView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent;

- (NSLayoutConstraint *)matchBottomWithView:(UIView *)view indent:(CGFloat)indent;
- (NSLayoutConstraint *)matchBottomWithView:(UIView *)view;
- (NSLayoutConstraint *)matchBottomWithView:(UIView *)view1 toView:(UIView *)view2;
- (NSLayoutConstraint *)matchBottomWithView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent;

- (NSArray *)matchVerticalEdgesWithView:(UIView *)view indent:(CGFloat)indent;
- (NSArray *)matchVerticalEdgesWithView:(UIView *)view;
- (NSArray *)matchVerticalEdgesWithView:(UIView *)view1 toView:(UIView *)view2;
- (NSArray *)matchVerticalEdgesWithView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent;

- (NSArray *)matchHorizontalEdgesWithView:(UIView *)view indent:(CGFloat)indent;
- (NSArray *)matchHorizontalEdgesWithView:(UIView *)view;
- (NSArray *)matchHorizontalEdgesWithView:(UIView *)view1 toView:(UIView *)view2;
- (NSArray *)matchHorizontalEdgesWithView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent;

- (NSArray *)matchEdgesWithView:(UIView *)view indent:(CGFloat)indent;
- (NSArray *)matchEdgesWithView:(UIView *)view;
- (NSArray *)matchEdgesWithView:(UIView *)view1 toView:(UIView *)view2;
- (NSArray *)matchEdgesWithView:(UIView *)view1 toView:(UIView *)view2 indent:(CGFloat)indent;

@end