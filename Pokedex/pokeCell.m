//
//  pokeCell.m
//  Pokedex
//
//  Created by student on 2017/9/24.
//  Copyright © 2017年 paytax. All rights reserved.
//

#import "pokeCell.h"
#import "Pokemon.h"

@implementation pokeCell

- (void)configCell:(Pokemon *)pokemon{
    self.pokeNameLabel.text = pokemon.name;
    self.pokeImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld", pokemon.pokedexID]];
}

@end
