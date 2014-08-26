//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (Centering)

- (NSArray *)centerInMiddleView:(UIView *)view;

- (NSLayoutConstraint *)centerHorizontallyView:(UIView *)view indent:(CGFloat)indent;
- (NSLayoutConstraint *)centerHorizontallyView:(UIView *)view;

- (NSLayoutConstraint *)centerVerticallyView:(UIView *)view indent:(CGFloat)indent;
- (NSLayoutConstraint *)centerVerticallyView:(UIView *)view;

@end