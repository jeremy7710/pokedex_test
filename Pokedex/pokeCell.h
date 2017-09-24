//
//  pokeCell.h
//  Pokedex
//
//  Created by student on 2017/9/24.
//  Copyright © 2017年 paytax. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pokemon.h"

@interface pokeCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *pokeImage;
@property (weak, nonatomic) IBOutlet UILabel *pokeNameLabel;

- (instancetype)initWithName:(NSString *)name pokedexID:(NSInteger)pokedexID;
- (void)configCell:(Pokemon *)pokemon;
@end
