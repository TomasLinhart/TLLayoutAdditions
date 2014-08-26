//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (Spacing)

- (NSLayoutConstraint *)addVerticalSpacingBetweenView:(UIView *)view1 view:(UIView *)view2 indent:(CGFloat)indent;
- (NSLayoutConstraint *)addVerticalSpacingBetweenView:(UIView *)view1 view:(UIView *)view2;

- (NSLayoutConstraint *)addHorizontalSpacingBetweenView:(UIView *)view1 view:(UIView *)view2 indent:(CGFloat)indent;
- (NSLayoutConstraint *)addHorizontalSpacingBetweenView:(UIView *)view1 view:(UIView *)view2;

@end