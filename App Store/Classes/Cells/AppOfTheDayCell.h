//
//  AppOfTheDayCell.h
//  Design
//
//  Created by Antique on 17/11/18.
//  Copyright © 2018 Antique. All rights reserved.
//

#import "BaseRoundedCell.h"

@interface AppOfTheDayCell : BaseRoundedCell
@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) IBOutlet UIImageView *iconView;
@property (nonatomic, strong) IBOutlet UIButton *getButton;
@end
