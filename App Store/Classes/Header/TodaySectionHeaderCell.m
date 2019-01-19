//
//  TodaySectionHeaderCell.m
//  Design
//
//  Created by Antique on 18/11/18.
//  Copyright © 2018 Antique. All rights reserved.
//

#import "TodaySectionHeaderCell.h"

@implementation TodaySectionHeaderCell
-(TodaySectionHeaderCell *) dequeue:(UICollectionView *)collectionView forReuseIdentifier:(NSString *)reuseIdentifier atIndexPath:(NSIndexPath *)indexPath {
    TodaySectionHeaderCell *cell = (TodaySectionHeaderCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    if(!cell) {
        NSLog(@"[WARNING]: Failed to dequeue TodaySectionHeaderCell");
    } return cell;
}

-(void) awakeFromNib {
    [super awakeFromNib];
    
    [self.profileImageView setClipsToBounds:YES];
    [self.profileImageView.layer setCornerRadius:self.profileImageView.bounds.size.width / 2];
    [self.profileImageView.layer setBorderColor:[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0].CGColor];
    [self.profileImageView.layer setBorderWidth:1];
}

-(void) setShouldShowImage:(BOOL)shouldShowImage {
    [self.profileImageView setHidden:!shouldShowImage];
}
@end
