//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (VisualConstraints)

- (NSArray *)addConstraintsWithVisualFormat:(NSString *)format views:(NSDictionary *)views;

- (NSArray *)addConstraintsWithVisualFormat:(NSString *)format options:(NSLayoutFormatOptions)opts views:(NSDictionary *)views;

- (NSArray *)addConstraintsWithVisualFormat:(NSString *)format metrics:(NSDictionary *)metrics views:(NSDictionary *)views;

- (NSArray *)addConstraintsWithVisualFormat:(NSString *)format options:(NSLayoutFormatOptions)opts metrics:(NSDictionary *)metrics views:(NSDictionary *)views;

@end