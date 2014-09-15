//
// Created by Tomas Linhart on 13/09/14.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "NSLayoutConstraint+Additions.h"

@implementation NSLayoutConstraint (Additions)

- (BOOL)isReferringToView:(UIView *)view
{
    if (!view) {
        return NO;
    } else if (!self.firstItem) {
        return NO;
    } else if (self.firstItem == view) {
        return YES;
    } else if (!self.secondItem) {
        return NO;
    } else {
        return self.secondItem == view;
    }
}

@end