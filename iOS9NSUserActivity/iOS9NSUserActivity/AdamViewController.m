

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
