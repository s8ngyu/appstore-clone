//
//  StoryViewController.m
//  Design
//
//  Created by Antique on 18/11/18.
//  Copyright © 2018 Antique. All rights reserved.
//

#import "StoryViewController.h"

@interface StoryViewController ()
@end

@implementation StoryViewController
-(void) viewDidLoad {
    [super viewDidLoad];
    [self.dismissButton addTarget:self action:@selector(dismiss:) forControlEvents:UIControlEventTouchUpInside];
}

-(void) positionContainer:(CGFloat)top left:(CGFloat)left bottom:(CGFloat)bottom right:(CGFloat)right {
    topConstraint.constant = top;
    leftConstraint.constant = left;
    bottomConstraint.constant = bottom;
    rightConstraint.constant = right;
    [self.view layoutIfNeeded];
}

-(void) setHeaderHeight:(CGFloat)height {
    headerHeightConstraint.constant = height;
    [self.view layoutIfNeeded];
}

-(void) configureRoundedCorners:(BOOL)roundedCorners {
    [self.headerImageView setClipsToBounds:roundedCorners];
    [self.headerImageView.layer setCornerRadius:roundedCorners ? 14.0 : 0.0];
}


-(void) dismiss:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(BOOL) prefersStatusBarHidden {
    return TRUE;
}
@end
