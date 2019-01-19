//
//  WorldPremiereCell.h
//  Design
//
//  Created by Antique on 17/11/18.
//  Copyright © 2018 Antique. All rights reserved.
//

#import "BaseRoundedCell.h"

@interface WorldPremiereCell : BaseRoundedCell
-(WorldPremiereCell *) dequeue:(UICollectionView *)collectionView forReuseIdentifier:(NSString *)reuseIdentifier atIndexPath:(NSIndexPath *)indexPath;

@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@end
