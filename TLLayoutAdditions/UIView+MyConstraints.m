//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "UIView+MyConstraints.h"

@implementation UIView (MyConstraints)

- (void)removeMyConstraints
{
    [self removeConstraints:[self constraints]];
}

@end