//
//  PageMainView.h
//  CbsSlipView
//
//  Created by 陈秉慎 on 2/23/16.
//  Copyright © 2016 cbs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageMainView : UIView
@property (nonatomic, assign) float centerX;
@property (nonatomic, assign) float centerY;
@property (nonatomic, strong) UIPanGestureRecognizer *panGestureRecognizer;
@property (nonatomic, strong) UIButton *leftBtn;
@end
