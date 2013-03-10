//
//  PhotoViewController.m
//  RPGOverview
//
//  Created by mike on 3/8/13.
//  Copyright (c) 2013 mike. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController ()

@end

@implementation PhotoViewController
@synthesize gotLevel;

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ModalToDesc"]) {
        DescViewController *dvc = [segue destinationViewController];
        [dvc setLevelDesc:gotLevel];
    }

}
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
    UIImage *image = [UIImage imageNamed:[gotLevel file]];
    [self.viewLeveliv setImage:image];
    [self setTitle:[gotLevel name]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
