//
//  DescViewController.m
//  RPGOverview
//
//  Created by mike on 3/8/13.
//  Copyright (c) 2013 mike. All rights reserved.
//

#import "DescViewController.h"

@interface DescViewController ()

@end

@implementation DescViewController
@synthesize levelDesc;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [[self descText] setText:levelDesc.info];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backBtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
