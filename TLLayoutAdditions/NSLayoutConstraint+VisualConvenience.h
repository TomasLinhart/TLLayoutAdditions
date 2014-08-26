//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (VisualConvenience)

+ (NSArray *)constraintsWithVisualFormat:(NSString *)format options:(NSLayoutFormatOptions)opts views:(NSDictionary *)views;

+ (NSArray *)constraintsWithVisualFormat:(NSString *)format metrics:(NSDictionary *)metrics views:(NSDictionary *)views;

+ (NSArray *)constraintsWithVisualFormat:(NSString *)format views:(NSDictionary *)views;

@end