//
//  AdamViewController.m
//  iOS9NSUserActivity
//
//  Created by liuk on 15/9/24.
//  Copyright © 2015年 Kai Liu. All rights reserved.
//

#import "AdamViewController.h"

@interface AdamViewController ()

@property (nonatomic, strong)NSUserActivity *activity;

@end

@implementation AdamViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Adam";
    [self addUserActivity];

}
- (void)addUserActivity{
    _activity = [[NSUserActivity alloc]initWithActivityType:@"adam"];
    _activity.title = @"Adam";
    
    _activity.keywords = [NSSet setWithArray:@[@"Adam"]];
    _activity.eligibleForHandoff = NO;
    _activity.eligibleForSearch = YES;
    [_activity becomeCurrent];
}


@end
