//
//  ZAlertView.h
//  ZAlertView
//
//  Created by renmiantaohua on 17/3/4.
//  Copyright © 2017年 zhangjing. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^AlertResult)(NSInteger index);

@interface ZAlertView : UIView

@property (nonatomic,copy) AlertResult resultIndex;

- (instancetype)initWithimage:(UIImage *)image message:(NSString *)message sureBtn:(NSString *)sureTitle cancleBtn:(NSString *)cancleTitle;

- (void)showAlertView;

@end
