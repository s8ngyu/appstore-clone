//
//  WorldPremiereCell.m
//  Design
//
//  Created by Antique on 17/11/18.
//  Copyright © 2018 Antique. All rights reserved.
//

#import "WorldPremiereCell.h"

@implementation WorldPremiereCell
-(WorldPremiereCell *) dequeue:(UICollectionView *)collectionView forReuseIdentifier:(NSString *)reuseIdentifier atIndexPath:(NSIndexPath *)indexPath {
    WorldPremiereCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    if(!cell) {
        NSLog(@"[WARNING]: Failed to dequeue WorldPremiere");
    }
    return cell;
}

-(void) awakeFromNib {
    [super awakeFromNib];
}
@end
