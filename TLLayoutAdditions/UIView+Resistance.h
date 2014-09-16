//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (Resistance)

@property (nonatomic, assign) UILayoutPriority horizontalContentHuggingPriority;
@property (nonatomic, assign) UILayoutPriority verticalContentHuggingPriority;

@property (nonatomic, assign) UILayoutPriority horizontalContentCompressionResistancePriority;
@property (nonatomic, assign) UILayoutPriority verticalContentCompressionResistancePriority;

@end