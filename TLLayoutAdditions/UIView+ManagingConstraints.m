//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "UIView+ManagingConstraints.h"
#import "NSLayoutConstraint+Additions.h"
#import "NSLayoutConstraint+Name.h"

@implementation UIView (ManagingConstraints)

- (void)removeConstraintsReferencingView:(UIView *)view
{
    NSMutableArray *constraints = [NSMutableArray array];

    for (NSLayoutConstraint *constraint in self.constraints) {
        if (![[constraint class] isEqual:[NSLayoutConstraint class]]) {
            continue;
        }

        if ([constraint isReferringToView:view]) {
            [constraints addObject:constraint];
        }
    }

    [self removeConstraints:constraints];
}

- (void)removeConstraintsNamed:(NSString *)name
{
    NSMutableArray *constraints = [NSMutableArray array];

    for (NSLayoutConstraint *constraint in self.constraints) {
        if (![[constraint class] isEqual:[NSLayoutConstraint class]]) {
            continue;
        }

        if ([constraint.name isEqualToString:name]) {
            [constraints addObject:constraint];
        }
    }

    [self removeConstraints:constraints];
}

@end