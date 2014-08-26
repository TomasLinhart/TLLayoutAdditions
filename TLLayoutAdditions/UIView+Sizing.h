//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (Sizing)

- (NSArray *)matchSizeWithView:(UIView *)view toSize:(CGSize)size;
- (NSLayoutConstraint *)matchHeightSizeWithView:(UIView *)view toSize:(CGFloat)size;
- (NSLayoutConstraint *)matchWidthSizeWithView:(UIView *)view toSize:(CGFloat)size;

- (NSArray *)matchSizeWithView:(UIView *)view1 toView:(UIView *)view2;
- (NSLayoutConstraint *)matchWidthSizeWithView:(UIView *)view1 toView:(UIView *)view2;
- (NSLayoutConstraint *)matchHeightSizeWithView:(UIView *)view1 toView:(UIView *)view2;

- (NSArray *)matchSizeWithView:(UIView *)view;
- (NSArray *)matchWidthWithView:(UIView *)view;
- (NSArray *)matchHeightWithView:(UIView *)view;

@end