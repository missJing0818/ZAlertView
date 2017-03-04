//
//  ViewController.m
//  ZAlertView
//
//  Created by renmiantaohua on 17/3/4.
//  Copyright © 2017年 zhangjing. All rights reserved.
//

#import "ViewController.h"
#import "ZAlertView.h"

//APPID
#define kHarpyAppID 11111111

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *str1 = @"-优化页面";
    NSString *str2 = @"-修复部分BUG";

    ZAlertView *alertView = [[ZAlertView alloc]initWithimage:[UIImage imageNamed:@"dialog"] message:[str1 stringByAppendingFormat:@"\n%@",str2] sureBtn:@"马上升级" cancleBtn:@"暂不升级"];
    alertView.resultIndex = ^(NSInteger index) {
        NSString *iTunesString = [NSString stringWithFormat:@"https://itunes.apple.com/app/id%d", kHarpyAppID];
        NSURL *iTunesURL = [NSURL URLWithString:iTunesString];
        [[UIApplication sharedApplication] openURL:iTunesURL];
    };
    [alertView showAlertView];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
