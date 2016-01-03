//
//  LilithViewController.m
//  iOS9NSUserActivity
//
//  Created by liuk on 15/9/24.
//  Copyright © 2015年 Kai Liu. All rights reserved.
//

#import "LilithViewController.h"

@interface LilithViewController ()
// 注意:必须是强引用
@property (nonatomic, strong)NSUserActivity *activity;
@end

@implementation LilithViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Lilith";
    [self addUserActivity];

}
- (void)addUserActivity{
    
    // 使用唯一标识符 @"lilith"创建一个新的NSUserActivity对象
    // 这个工程已经被配置成确保使用这个标识符时要保证它不会被改变
    _activity = [[NSUserActivity alloc]initWithActivityType:@"lilith"];
    
    // 这就是将会在Spotlight 搜索结果里出现的内容
    _activity.title = @"Lilith";
    
    // 搜索的关键字
    // 为了确保可搜寻的内容不仅止限于应用的标题，你也要提供一系列的关键字
    _activity.keywords = [NSSet setWithArray:@[@"Lilith"]];
    
    // 是否将用户活动转交到其他设备
    _activity.eligibleForHandoff = NO;
    
    // 是否显示历史搜索记录
    _activity.eligibleForSearch = YES;
    
    // 它自动的被加入到了设备的搜索结果索引中
    [_activity becomeCurrent];
    
    // 过期时间,比如新闻一周后就过期
    // _activity.expirationDate =
    
    // 每个控制器的user activity和 搜索结果都是仅当应用曾经被打开过时而创建的
    // _activity.eligibleForPublicIndexing = YES;
}


@end
