//
//  TogetherMainViewController.m
//  CbsSlipView
//
//  Created by 陈秉慎 on 2/23/16.
//  Copyright © 2016 cbs. All rights reserved.
//

#import "TogetherMainViewController.h"
#import "TogetherLeftView.h"
#import "TogetherMainView.h"

@interface TogetherMainViewController ()
@property (nonatomic, strong) TogetherLeftView *leftView;
@property (nonatomic, strong) TogetherMainView *mainView;

@end

@implementation TogetherMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.mainView];
    [self.mainView addSubview:self.leftView];
}

- (TogetherMainView *)mainView
{
    if (_mainView == nil) {
        _mainView = [[TogetherMainView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    }
    return _mainView;
}

- (TogetherLeftView *)leftView
{
    if (_leftView == nil) {
        _leftView = [[TogetherLeftView alloc] initWithFrame:CGRectMake(-LEFTVIEWWIDTH, 0, LEFTVIEWWIDTH, [UIScreen mainScreen].bounds.size.height)];
    }
    return _leftView;
}
@end
