//
//  BaseRoundedCell.m
//  Design
//
//  Created by Antique on 17/11/18.
//  Copyright © 2018 Antique. All rights reserved.
//

#import "BaseRoundedCell.h"

@implementation BaseRoundedCell
BOOL isPressed = NO;
-(void) awakeFromNib {
    [super awakeFromNib];
    self.cellHeight = 456.0;
    self.innerMargin = 20;
    [self setClipsToBounds:NO];
}

-(void) layoutSubviews {
    [super layoutSubviews];
    [self configureShadow];
    [self configureGestureRecognizer];
}


-(void) configureShadow {
    [shadowView removeFromSuperview];
    shadowView = [[UIView alloc] initWithFrame:CGRectMake(self.innerMargin, self.innerMargin, self.bounds.size.width - (2 * self.innerMargin), self.bounds.size.height - (2 * self.innerMargin))];
    [shadowView.layer setMasksToBounds:NO];
    [shadowView.layer setShadowPath:[UIBezierPath bezierPathWithRoundedRect:shadowView.bounds cornerRadius:14.0].CGPath];
    [shadowView.layer setShadowColor:[UIColor blackColor].CGColor];
    [shadowView.layer setShadowOffset:CGSizeZero];
    [shadowView.layer setShadowRadius:30];
    [shadowView.layer setShadowOpacity:0.28];
    [self insertSubview:shadowView atIndex:0];
}

-(void) configureGestureRecognizer {
    longPressGestureRecognizer = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleLongPressGesture:)];
    [longPressGestureRecognizer setMinimumPressDuration:0.1];
    [self addGestureRecognizer:longPressGestureRecognizer];
}


-(void) handleLongPressGesture:(UILongPressGestureRecognizer *)sender {
    if([sender state] == UIGestureRecognizerStateBegan) {
        [self handleLongPressBegan];
    } else if([sender state] == UIGestureRecognizerStateEnded || [sender state] == UIGestureRecognizerStateCancelled) {
        [self handleLongPressEnded];
    }
}


-(void) handleLongPressBegan {
    if(isPressed) {
        return;
    }
    
    isPressed = TRUE;
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.8 initialSpringVelocity:0.2 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        [self setTransform:CGAffineTransformMakeScale(0.95, 0.95)];
    } completion:nil];
}

-(void) handleLongPressEnded {
    if(!isPressed) {
        return;
    }
    
    isPressed = TRUE;
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.4 initialSpringVelocity:0.2 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        [self setTransform:CGAffineTransformIdentity];
    } completion:^(BOOL finished) {
        isPressed = NO;
    }];
}
@end
