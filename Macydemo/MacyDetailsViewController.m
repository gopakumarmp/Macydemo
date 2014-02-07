//
//  MacyDetailsViewController.m
//  Macydemo
//
//  Created by Vasudevan Devarajan on 2/6/14.
//  Copyright (c) 2014 demo. All rights reserved.
//

#import "MacyDetailsViewController.h"

@interface MacyDetailsViewController ()

@end

@implementation MacyDetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated {
    self.tapCountLabel.text = [NSString stringWithFormat:@"TapCount# %d ",self.tapCount];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)DoneButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
