//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (Resistance)

- (void)setHorizontalContentHuggingPriority:(UILayoutPriority)priority;
- (void)setVerticalContentHuggingPriority:(UILayoutPriority)priority;

- (void)setHorizontalContentCompressionResistancePriority:(UILayoutPriority)priority;
- (void)setVerticalContentCompressionResistancePriority:(UILayoutPriority)priority;

@end