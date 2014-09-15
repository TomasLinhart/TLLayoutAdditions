//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "TLLinearLayoutView.h"
#import "UIView+Edges.h"
#import "UIView+Sizing.h"
#import "UIView+Spacing.h"
#import "UIView+ManagingConstraints.h"
#import "NSLayoutConstraint+Name.h"

static NSString *const TLLinearLayoutViewConstraint = @"TLLinearLayoutViewConstraint";

@implementation TLLinearLayoutView

#pragma mark - Initializers

- (id)init
{
    return [self initWithOrientation:TLLinearLayoutViewOrientationVertical];
}

- (id)initWithFrame:(CGRect)frame
{
    return [self initWithOrientation:TLLinearLayoutViewOrientationVertical];
}

- (instancetype)initWithOrientation:(TLLinearLayoutViewOrientation)orientation
{
    self = [super initWithFrame:CGRectZero];
    if (self) {
        self.orientation = orientation;
        self.translatesAutoresizingMaskIntoConstraints = NO;
    }

    return self;
}

#pragma mark - View Lifecycle

- (void)updateConstraints
{
    if (!self.subviews.count) {
        [super updateConstraints];
        return;
    }

    // Just delete all constraints because it is not know how hierarchy was changed.
    [self removeConstraintsNamed:TLLinearLayoutViewConstraint];

    NSMutableArray *constraints = [NSMutableArray array];
    UIView *previousView = self.subviews[0];
    if (self.orientation == TLLinearLayoutViewOrientationHorizontal) {
        [constraints addObject:[self matchLeftWithView:previousView]];
        [constraints addObjectsFromArray:[self matchHeightWithView:previousView]];
        for (NSUInteger i = 1; i < self.subviews.count; i++) {
            UIView *view = self.subviews[i];
            [constraints addObject:[self addHorizontalSpacingBetweenView:previousView view:view]];
            [constraints addObjectsFromArray:[self matchHeightWithView:view]];

            previousView = view;
        }

        [constraints addObject:[self matchRightWithView:previousView]];
    } else {
        [constraints addObject:[self matchTopWithView:previousView]];
        [constraints addObjectsFromArray:[self matchWidthWithView:previousView]];
        for (NSUInteger i = 1; i < self.subviews.count; i++) {
            UIView *view = self.subviews[i];
            [constraints addObject:[self addVerticalSpacingBetweenView:previousView view:view]];
            [constraints addObjectsFromArray:[self matchWidthWithView:view]];

            previousView = view;
        }

        [constraints addObject:[self matchBottomWithView:previousView]];
    }

    for (NSLayoutConstraint *constraint in constraints) {
        constraint.name = TLLinearLayoutViewConstraint;
    }

    [super updateConstraints];
}

- (CGSize)intrinsicContentSize
{
    // If we have no views then parent would have to give us size.
    // So in that case we have zero size.
    if (self.orientation == TLLinearLayoutViewOrientationVertical &&
            self.subviews.count == 0) {
        return CGSizeMake(UIViewNoIntrinsicMetric, 0);
    } else if (self.orientation == TLLinearLayoutViewOrientationHorizontal &&
            self.subviews.count == 0) {
        return CGSizeMake(0, UIViewNoIntrinsicMetric);
    } else {
        return CGSizeMake(UIViewNoIntrinsicMetric, UIViewNoIntrinsicMetric);
    }
}


- (void)addSubview:(UIView *)view
{
    // We need to make sure if can position the view with auto layout.
    view.translatesAutoresizingMaskIntoConstraints = NO;

    [super addSubview:view];
}

#pragma mark - Properties

- (void)setOrientation:(TLLinearLayoutViewOrientation)orientation
{
    _orientation = orientation;

    [self setNeedsUpdateConstraints];
}

@end