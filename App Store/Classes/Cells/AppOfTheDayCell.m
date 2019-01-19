//
//  AppOfTheDayCell.m
//  Design
//
//  Created by Antique on 17/11/18.
//  Copyright © 2018 Antique. All rights reserved.
//

#import "AppOfTheDayCell.h"

@implementation AppOfTheDayCell
-(AppOfTheDayCell *) dequeue:(UICollectionView *)collectionView forReuseIdentifier:(NSString *)reuseIdentifier atIndexPath:(NSIndexPath *)indexPath {
    AppOfTheDayCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    if(!cell) {
        NSLog(@"[WARNING]: Failed to dequeue AppOfTheDayCell");
    }
    return cell;
}

-(void) awakeFromNib {
    [super awakeFromNib];
    [self.imageView.layer setCornerRadius:14.0];
    [self.iconView.layer setCornerRadius:8.0];
}
@end
