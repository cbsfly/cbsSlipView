//
//  PageMainView.m
//  CbsSlipView
//
//  Created by 陈秉慎 on 2/23/16.
//  Copyright © 2016 cbs. All rights reserved.
//

#import "PageMainView.h"

@implementation PageMainView

#define MAX_CENTER_X 420 //菜单出现时中心点所在位置
#define BOUND_X 280 //判定是出现菜单还是隐藏菜单的边界值

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        CGRect screen = [[UIScreen mainScreen] bounds];
        self.centerX = screen.size.width / 2;
        self.centerY = screen.size.height / 2;
        
        self.backgroundColor = [UIColor greenColor];
        
        [self addSubview:self.leftBtn];
        [self addGestureRecognizer:self.panGestureRecognizer];
        
    }
    return self;
}

- (void)leftViewAppear
{
    [UIView animateWithDuration:0.2 animations:^(void){
        if (self.center.x == self.centerX) {
            self.center = CGPointMake(MAX_CENTER_X, self.centerY);
        }else if (self.center.x == MAX_CENTER_X) {
            self.center = CGPointMake(self.centerX, self.centerY);
        }
    }];
    
}

- (void)handlePan:(UIPanGestureRecognizer *)recognizer
{
    CGPoint translation = [recognizer translationInView:self];
    float x = self.center.x + translation.x;
    
    if (x < _centerX) {
        x = _centerX;
    }
    self.center = CGPointMake(x, _centerY);

    if (recognizer.state == UIGestureRecognizerStateEnded) {
        [UIView animateWithDuration:0.2 animations:^(void){
            if (x > BOUND_X) {
                self.center = CGPointMake(MAX_CENTER_X, _centerY);
            }else{
                self.center = CGPointMake(_centerX, _centerY);
            }
        }];
    }
    [recognizer setTranslation:CGPointZero inView:self];
}

- (UIButton *)leftBtn
{
    if (_leftBtn == nil) {
        _leftBtn = [[UIButton alloc] initWithFrame:CGRectMake(20, 20, 120, 40)];
        [_leftBtn setTitle:@"点我弹出菜单" forState:UIControlStateNormal];
        [_leftBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_leftBtn addTarget:self action:@selector(leftViewAppear) forControlEvents:UIControlEventTouchUpInside];
    }
    return _leftBtn;
}

- (UIPanGestureRecognizer *)panGestureRecognizer
{
    if (_panGestureRecognizer == nil) {
        _panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    }
    return _panGestureRecognizer;
}
@end
