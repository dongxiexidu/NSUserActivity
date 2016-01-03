//
//  ViewController.m
//  iOS9NSUserActivity
//
//  Created by 李东喜 on 16/1/3.
//  Copyright © 2016年 don. All rights reserved.
//

#import "ViewController.h"

#import "AdamViewController.h"
#import "LilithViewController.h"
#import "EveViewController.h"

@interface ViewController ()
/*** 用户activity ***/
@property (nonatomic,strong) NSUserActivity *activity;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addUserActivity];
    self.navigationItem.title = @"主界面";
}
- (void)addUserActivity{
    _activity = [[NSUserActivity alloc]initWithActivityType:@"chuanzhang"];
    _activity.title = @"Eden";
    
    _activity.keywords = [NSSet setWithArray:@[@"Adam", @"Lilith", @"Eve"]];
    _activity.eligibleForHandoff = NO;
    _activity.eligibleForSearch = YES;
    // 每个控制器的user activity和 搜索结果都是仅当应用曾经被打开过时而创建的
    // _activity.eligibleForPublicIndexing = YES;
    [_activity becomeCurrent];
}

- (void)restoreUserActivityState:(NSUserActivity *)activity{
    if ([activity.title isEqualToString:@"Adam"]) {
        AdamViewController *adamView = [[AdamViewController alloc]init];
        [self.navigationController pushViewController:adamView animated:YES];
    }else if([activity.title isEqualToString:@"Lilith"]){
        LilithViewController *lilithView = [[LilithViewController alloc]init];
        [self.navigationController pushViewController:lilithView animated:YES];
    }else  if([activity.title isEqualToString:@"Eve"]){
        EveViewController *eveView = [[EveViewController alloc]init];
        [self.navigationController pushViewController:eveView animated:YES];
    }
}

#pragma mark UITableView dataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    if (indexPath.row == 0) {
        cell.textLabel.text = @"Adam";
    }else if (indexPath.row == 1){
        cell.textLabel.text = @"Lilith";
    }else if (indexPath.row == 2){
        cell.textLabel.text = @"Eve";
    }
    return cell;
}

#pragma mark UITableView delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        AdamViewController *adamView = [[AdamViewController alloc]init];
        [self.navigationController pushViewController:adamView animated:YES];
    }else if(indexPath.row == 1){
        LilithViewController *lilithView = [[LilithViewController alloc]init];
        [self.navigationController pushViewController:lilithView animated:YES];
    }else{
        EveViewController *eveView = [[EveViewController alloc]init];
        [self.navigationController pushViewController:eveView animated:YES];
    }
}


@end
