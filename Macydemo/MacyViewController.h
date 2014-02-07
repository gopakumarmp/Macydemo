//
//  MacyViewController.h
//  Macydemo
//
//  Created by Vasudevan Devarajan on 2/6/14.
//  Copyright (c) 2014 demo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MacyDetailsViewController.h"

@interface MacyViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UISearchBarDelegate>


@property (nonatomic, weak) IBOutlet UICollectionView *mainCollectionView;

- (IBAction)ScanButtonPressed:(id)sender;

@property(nonatomic, assign) int tapCount;

@property (nonatomic, weak) IBOutlet UISearchBar *searchBar;

@end
