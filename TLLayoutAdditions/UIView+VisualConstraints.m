//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "UIView+VisualConstraints.h"

@implementation UIView (VisualConstraints)

- (NSArray *)addConstraintsWithVisualFormat:(NSString *)format views:(NSDictionary *)views
{
    return [self addConstraintsWithVisualFormat:format options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:views];
}

- (NSArray *)addConstraintsWithVisualFormat:(NSString *)format options:(NSLayoutFormatOptions)opts views:(NSDictionary *)views
{
    return [self addConstraintsWithVisualFormat:format options:opts metrics:nil views:views];
}

- (NSArray *)addConstraintsWithVisualFormat:(NSString *)format metrics:(NSDictionary *)metrics views:(NSDictionary *)views
{
    return [self addConstraintsWithVisualFormat:format options:NSLayoutFormatDirectionLeadingToTrailing metrics:metrics views:views];
}

- (NSArray *)addConstraintsWithVisualFormat:(NSString *)format options:(NSLayoutFormatOptions)opts metrics:(NSDictionary *)metrics views:(NSDictionary *)views
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:format options:opts metrics:metrics views:views];
    [self addConstraints:constraints];
    return constraints;
}

@end