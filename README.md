# ZAlertView 
调用
ZAlertView *alertView = [[ZAlertView alloc]initWithimage:[UIImage imageNamed:@"dialog"] message:@"有新版本啦，快来升级吧" sureBtn:@"马上升级" cancleBtn:@"暂不升级"];
 alertView.resultIndex = ^(NSInteger index) {
        NSString *iTunesString = [NSString stringWithFormat:@"https://itunes.apple.com/app/id%d",AppID];
        NSURL *iTunesURL = [NSURL URLWithString:iTunesString];
        [[UIApplication sharedApplication] openURL:iTunesURL];
    };
    [alertView showAlertView];
