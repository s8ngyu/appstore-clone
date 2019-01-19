//
//  BaseRoundedCell.h
//  Design
//
//  Created by Antique on 17/11/18.
//  Copyright © 2018 Antique. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseRoundedCell : UICollectionViewCell {
    UIView *shadowView;
    UILongPressGestureRecognizer *longPressGestureRecognizer;
}

@property (nonatomic) CGFloat cellHeight;
@property (nonatomic) CGFloat innerMargin;
@end
