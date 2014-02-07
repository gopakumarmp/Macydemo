//
//  MacyDetailsViewController.h
//  Macydemo
//
//  Created by Vasudevan Devarajan on 2/6/14.
//  Copyright (c) 2014 demo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MacyDetailsViewController : UIViewController

- (IBAction)DoneButtonPressed:(id)sender;

@property(nonatomic, assign) int tapCount;
@property (nonatomic, weak) IBOutlet UILabel *tapCountLabel;

@end
