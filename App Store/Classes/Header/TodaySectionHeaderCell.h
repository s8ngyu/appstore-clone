//
//  TodaySectionHeaderCell.h
//  Design
//
//  Created by Antique on 18/11/18.
//  Copyright © 2018 Antique. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TodaySectionHeaderCell : UICollectionReusableView
@property (nonatomic) CGFloat viewHeight;
@property (nonatomic) BOOL shouldShowImage;
@property (nonatomic, strong) IBOutlet UIImageView *profileImageView;

-(TodaySectionHeaderCell *) dequeue:(UICollectionView *)collectionView forReuseIdentifier:(NSString *)reuseIdentifier atIndexPath:(NSIndexPath *)indexPath;
@end
