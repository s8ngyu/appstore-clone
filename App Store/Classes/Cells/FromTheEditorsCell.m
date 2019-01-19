//
//  FromTheEditorsCell.m
//  Design
//
//  Created by Antique on 17/11/18.
//  Copyright © 2018 Antique. All rights reserved.
//

#import "FromTheEditorsCell.h"

@implementation FromTheEditorsCell
-(FromTheEditorsCell *) dequeue:(UICollectionView *)collectionView forReuseIdentifier:(NSString *)reuseIdentifier atIndexPath:(NSIndexPath *)indexPath {
    FromTheEditorsCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    if(!cell) {
        NSLog(@"[WARNING]: Failed to dequeue FromTheEditors");
    }
    return cell;
}

-(void) awakeFromNib {
    [super awakeFromNib];
    [self.imageView.layer setCornerRadius:14.0];
}
@end
