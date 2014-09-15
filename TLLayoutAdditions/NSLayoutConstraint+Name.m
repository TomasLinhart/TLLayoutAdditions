//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "NSLayoutConstraint+Name.h"
#import <objc/runtime.h>

static char const *const NSLayoutConstraintNameObjectKey = "NSLayoutConstraintNameObjectKey";

@implementation NSLayoutConstraint (Name)

- (NSString *)name
{
    return objc_getAssociatedObject(self, NSLayoutConstraintNameObjectKey);
}

- (void)setName:(NSString *)name
{
    objc_setAssociatedObject(self, NSLayoutConstraintNameObjectKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end