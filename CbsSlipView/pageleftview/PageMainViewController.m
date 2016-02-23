//
//  PageMainViewController.m
//  CbsSlipView
//
//  Created by 陈秉慎 on 2/23/16.
//  Copyright © 2016 cbs. All rights reserved.
//

#import "PageMainViewController.h"

@interface PageMainViewController ()

@end

@implementation PageMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.leftView];
    [self.view addSubview:self.mainView];
}

- (PageLeftView *)leftView
{
    if (_leftView == nil) {
        _leftView = [[PageLeftView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        
    }
    return _leftView;
}

- (PageMainView *)mainView
{
    if (_mainView == nil) {
        _mainView = [[PageMainView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    }
    return _mainView;
}

@end
