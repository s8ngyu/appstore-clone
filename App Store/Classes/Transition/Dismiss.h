//
//  Dismiss.h
//  Design
//
//  Created by Antique on 18/11/18.
//  Copyright © 2018 Antique. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "TutorialsCollectionViewController.h"
#import "StoryViewController.h"
@interface Dismiss : NSObject <UIViewControllerAnimatedTransitioning>
@property (nonatomic) CGRect selectedFrame;
@end
