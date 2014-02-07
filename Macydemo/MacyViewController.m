//
//  MacyViewController.m
//  Macydemo
//
//  Created by Vasudevan Devarajan on 2/6/14.
//  Copyright (c) 2014 demo. All rights reserved.
//

#import "MacyViewController.h"

@interface MacyViewController ()

@end

@implementation MacyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.mainCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [self.mainCollectionView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionView Datasource
#define kCellCount 9
#define kCellSavingPass 0
#define kCellShop 1
#define kCellRegistry 2
#define kCellStores 3
#define kCellBag 4
#define kCellOffers 5
#define kCellAccount 6
#define kCellShopNow 7
#define kCellGift 8


-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return kCellCount;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    if (indexPath.item   == kCellSavingPass ) {
        UIImage *image = [UIImage imageNamed: @"savingpass.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        cell.backgroundView = imageView;
    }else if (indexPath.row   == kCellShop ) {
        UIImage *image = [UIImage imageNamed: @"shop.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        cell.backgroundView = imageView;
    }else if (indexPath.row   == kCellRegistry ) {
        UIImage *image = [UIImage imageNamed: @"registry.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        cell.backgroundView = imageView;
    }else if (indexPath.row   == kCellStores ) {
        UIImage *image = [UIImage imageNamed: @"stores.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        cell.backgroundView = imageView;
    }else if (indexPath.row   == kCellBag ) {
        UIImage *image = [UIImage imageNamed: @"bag.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        cell.backgroundView = imageView;
    }else if (indexPath.row   == kCellOffers ) {
        UIImage *image = [UIImage imageNamed: @"offers.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        cell.backgroundView = imageView;
    }else if (indexPath.row   == kCellAccount ) {
        UIImage *image = [UIImage imageNamed: @"account.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        cell.backgroundView = imageView;
    }else if (indexPath.row   == kCellShopNow ) {
        UIImage *image = [UIImage imageNamed: @"shopnow.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        cell.backgroundView = imageView;
    }else if (indexPath.row   == kCellGift ) {
        UIImage *image = [UIImage imageNamed: @"giftidea.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        cell.backgroundView = imageView;
    }
    
    return cell;
}

-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    self.tapCount++;
    
    if (indexPath.item == kCellSavingPass) {
        MacyDetailsViewController *vc = [[MacyDetailsViewController alloc] initWithNibName:@"MacyDetailsViewController" bundle:nil];
        vc.tapCount  = self.tapCount;
        [self presentViewController:vc animated:NO completion:nil];
        
    }else if (indexPath.item == kCellShop){
        MacyDetailsViewController *vc = [[MacyDetailsViewController alloc] initWithNibName:@"MacyDetailsViewController" bundle:nil];
        vc.tapCount  = self.tapCount;
        [self presentViewController:vc animated:NO completion:nil];
        
    }else if (indexPath.item == kCellRegistry){
        MacyDetailsViewController *vc = [[MacyDetailsViewController alloc] initWithNibName:@"MacyDetailsViewController" bundle:nil];
        vc.tapCount  = self.tapCount;
        [self presentViewController:vc animated:NO completion:nil];
        
    }else if (indexPath.item == kCellStores){
        MacyDetailsViewController *vc = [[MacyDetailsViewController alloc] initWithNibName:@"MacyDetailsViewController" bundle:nil];
        vc.tapCount  = self.tapCount;
        [self presentViewController:vc animated:NO completion:nil];
        
    }else if (indexPath.item == kCellBag){
        MacyDetailsViewController *vc = [[MacyDetailsViewController alloc] initWithNibName:@"MacyDetailsViewController" bundle:nil];
        vc.tapCount  = self.tapCount;
        [self presentViewController:vc animated:NO completion:nil];
        
    }else if (indexPath.item == kCellOffers){
        MacyDetailsViewController *vc = [[MacyDetailsViewController alloc] initWithNibName:@"MacyDetailsViewController" bundle:nil];
        vc.tapCount  = self.tapCount;
        [self presentViewController:vc animated:NO completion:nil];
        
    }else if (indexPath.item == kCellAccount){
        MacyDetailsViewController *vc = [[MacyDetailsViewController alloc] initWithNibName:@"MacyDetailsViewController" bundle:nil];
        vc.tapCount  = self.tapCount;
        [self presentViewController:vc animated:NO completion:nil];
        
    }else if (indexPath.item == kCellShopNow){
        MacyDetailsViewController *vc = [[MacyDetailsViewController alloc] initWithNibName:@"MacyDetailsViewController" bundle:nil];
        vc.tapCount  = self.tapCount;
        [self presentViewController:vc animated:NO completion:nil];
        
    }else if (indexPath.item == kCellGift){
        MacyDetailsViewController *vc = [[MacyDetailsViewController alloc] initWithNibName:@"MacyDetailsViewController" bundle:nil];
        vc.tapCount  = self.tapCount;
        [self presentViewController:vc animated:NO completion:nil];
    }
    
    return true;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if ( indexPath.item  == kCellSavingPass ) {
        
        return CGSizeMake(300, 80);
        
    } else if (indexPath.item == 8){
        
        return CGSizeMake(300, 80);
        
    } else if (indexPath.item == 7) {
        
        return CGSizeMake(300, 80);
    }
    
    return CGSizeMake(80, 80);
}

#define kHeaderHeight 10
#define kInterSectionMargin 8

- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(50, 20, 50, 20);
}

- (IBAction)ScanButtonPressed:(id)sender {
    self.tapCount++;
    MacyDetailsViewController *vc = [[MacyDetailsViewController alloc] initWithNibName:@"MacyDetailsViewController" bundle:nil];
    vc.tapCount  = self.tapCount;
    [self presentViewController:vc animated:NO completion:nil];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [searchBar resignFirstResponder];
    // Do the search...
}

@end
