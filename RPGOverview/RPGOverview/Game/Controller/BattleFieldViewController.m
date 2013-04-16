//
//  BattleFieldViewController.m
//  RPGOverview
//
//  Created by mike on 3/12/13.
//  Copyright (c) 2013 mike. All rights reserved.
//  显示敌人头像，HP，MP， skill icon。下面显示英雄的细节

#import "BattleFieldViewController.h"
#import "Skill.h"

@interface BattleFieldViewController ()

@property (nonatomic) Skill *heroSkill;
@property (nonatomic) Skill *enemySkill;

@end

@implementation BattleFieldViewController

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
    [self.enemyHP setProgress:1 animated:NO];
    [self.enemyMP setProgress:1 animated:NO];
    
    [self.heroHP setProgress:1 animated:NO];
    [self.heroMP setProgress:1 animated:NO];
    
    
    self.heroSkill = [[Skill alloc] init];
    self.enemySkill = [[Skill alloc] init];
    
    self.heroSkill.attack = 100;
    self.heroSkill.defence = 100;
    
    self.enemySkill.attack = 50;
    self.enemySkill.defence = 50;
    
    //same changes
    //another one
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)attacking:(UIButton *)sender {
    if (self.enemyHP.progress > 0 && self.heroHP.progress >0) {

    float enemyLife = self.enemyHP.progress - ((float)self.heroSkill.attack / self.enemySkill.defence ) * 0.1;
    float heroLife = self.heroHP.progress - ((float)self.enemySkill.attack / self.heroSkill.defence ) * 0.1;
    
    [self.enemyHP setProgress:enemyLife animated:YES];
    [self.heroHP setProgress:heroLife animated:YES];
    } else {
        [sender setTitle:(self.heroHP.progress > 0) ? @"You Win!" : @"You Lost!" forState:UIControlStateNormal];
        sender.enabled = NO;
    }
    
}
@end
