//
// Created by Tomas Linhart on 13/09/14.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (ManagingConstraints)

- (void)removeConstraintsReferencingView:(UIView *)view;

- (void)removeConstraintsNamed:(NSString *)name;

@end