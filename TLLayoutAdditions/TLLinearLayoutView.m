//
// Created by Tomas Linhart.
// Copyright (c) 2014 Tomáš Linhart. All rights reserved.
//

#import "TLLinearLayoutView.h"
#import "UIView+MyConstraints.h"
#import "UIView+Edges.h"
#import "UIView+Sizing.h"
#import "UIView+Spacing.h"

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
    [self removeMyConstraints];

    UIView *previousView = self.subviews[0];
    if (self.orientation == TLLinearLayoutViewOrientationHorizontal) {
        [self matchLeftWithView:previousView];
        [self matchHeightWithView:previousView];
        for (NSUInteger i = 1; i < self.subviews.count; i++) {
            UIView *view = self.subviews[i];
            [self addHorizontalSpacingBetweenView:previousView view:view];
            [self matchHeightWithView:view];

            previousView = view;
        }

        [self matchRightWithView:previousView];
    } else {
        [self matchTopWithView:previousView];
        [self matchWidthWithView:previousView];
        for (NSUInteger i = 1; i < self.subviews.count; i++) {
            UIView *view = self.subviews[i];
            [self addVerticalSpacingBetweenView:previousView view:view];
            [self matchWidthWithView:view];

            previousView = view;
        }

        [self matchBottomWithView:previousView];
    }

    [super updateConstraints];
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

    [self needsUpdateConstraints];
}

@end