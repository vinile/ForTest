//
//  BattleFieldViewController.h
//  RPGOverview
//
//  Created by mike on 3/12/13.
//  Copyright (c) 2013 mike. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BattleFieldViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIProgressView *enemyHP;
@property (weak, nonatomic) IBOutlet UIProgressView *enemyMP;
@property (weak, nonatomic) IBOutlet UIProgressView *heroHP;
@property (weak, nonatomic) IBOutlet UIProgressView *heroMP;


- (IBAction)attacking:(UIButton *)sender;

@end
