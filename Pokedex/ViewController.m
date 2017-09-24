//
//  ViewController.m
//  Pokedex
//
//  Created by student on 2017/9/24.
//  Copyright © 2017年 paytax. All rights reserved.
//

#import "ViewController.h"
#import "pokeCell.h"
#import "Pokemon.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    pokeCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"pokeCell" forIndexPath:indexPath];
    Pokemon *pokemon = [[Pokemon alloc] initWithName:@"Pokemon" pokedexID:indexPath.row];
    [cell configCell:pokemon];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 30;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(83, 85);
}

@end
