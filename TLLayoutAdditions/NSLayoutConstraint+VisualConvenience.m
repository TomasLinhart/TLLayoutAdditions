//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "NSLayoutConstraint+VisualConvenience.h"

@implementation NSLayoutConstraint (VisualConvenience)

+ (NSArray *)constraintsWithVisualFormat:(NSString *)format options:(NSLayoutFormatOptions)opts views:(NSDictionary *)views
{
    return [NSLayoutConstraint constraintsWithVisualFormat:format options:opts metrics:nil views:views];
}

+ (NSArray *)constraintsWithVisualFormat:(NSString *)format metrics:(NSDictionary *)metrics views:(NSDictionary *)views
{
    return [NSLayoutConstraint constraintsWithVisualFormat:format options:NSLayoutFormatDirectionLeadingToTrailing metrics:metrics views:views];
}

+ (NSArray *)constraintsWithVisualFormat:(NSString *)format views:(NSDictionary *)views
{
    return [NSLayoutConstraint constraintsWithVisualFormat:format options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:views];
}

@end