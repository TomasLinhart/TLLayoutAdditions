//
// Created by Tomas Linhart on 13/09/14.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (Additions)

- (BOOL)isReferringToView:(UIView *)view;

@end