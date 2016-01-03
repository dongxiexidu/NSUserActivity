//
//  EveViewController.m
//  iOS9NSUserActivity
//
//  Created by liuk on 15/9/24.
//  Copyright © 2015年 Kai Liu. All rights reserved.
//

#import "EveViewController.h"

@interface EveViewController ()
@property (nonatomic, strong)NSUserActivity *activity;

@end

@implementation EveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Eve";
    self.view.backgroundColor = [UIColor whiteColor];
    [self addUserActivity];
}
- (void)addUserActivity{
    _activity = [[NSUserActivity alloc]initWithActivityType:@"eve"];
    _activity.title = @"Eve";
    
    _activity.keywords = [NSSet setWithArray:@[@"eve"]];
    _activity.eligibleForHandoff = NO;
    _activity.eligibleForSearch = YES;
    [_activity becomeCurrent];
}




@end
