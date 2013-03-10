//
//  DescViewController.h
//  RPGOverview
//
//  Created by mike on 3/8/13.
//  Copyright (c) 2013 mike. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Level.h"

@interface DescViewController : UIViewController
@property (nonatomic, strong) Level *levelDesc;
@property (weak, nonatomic) IBOutlet UITextView *descText;
- (IBAction)backBtn:(id)sender;
@end
