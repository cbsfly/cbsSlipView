//
//  PageMainViewController.h
//  CbsSlipView
//
//  Created by 陈秉慎 on 2/23/16.
//  Copyright © 2016 cbs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PageLeftView.h"
#import "PageMainView.h"

@interface PageMainViewController : UIViewController
@property (nonatomic, strong) PageLeftView *leftView;
@property (nonatomic, strong) PageMainView *mainView;
@end
