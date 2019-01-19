//
//  TutorialsCollectionViewController.h
//  Design
//
//  Created by Antique on 17/11/18.
//  Copyright © 2018 Antique. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BaseRoundedCell.h"
#import "WorldPremiereCell.h"
#import "FromTheEditorsCell.h"
#import "AppOfTheDayCell.h"
#import "TodaySectionHeaderCell.h"
#import "Present.h"
#import "Dismiss.h"
@interface TutorialsCollectionViewController : UICollectionViewController <UICollectionViewDelegateFlowLayout> {
    NSArray *images;
}
@end
