//
//  QIEViewController.m
//  QIELBLelink
//
//  Created by 244645877@qq.com on 12/05/2018.
//  Copyright (c) 2018 244645877@qq.com. All rights reserved.
//

#import "QIEViewController.h"
#import <LBLelinkKit/LBLelinkKit.h>
//#import
@interface QIEViewController ()

@end

@implementation QIEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [LBLelinkKit enableLog:YES];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSError * error = nil;
        BOOL result = [LBLelinkKit authWithAppid:@"10542" secretKey:@"20c43b5977d080c0301502ce5e95cc78" error:&error];
        if (result) {
            NSLog(@"授权成功");
        }else{
            NSLog(@"授权失败：error = %@",error);
        }
    });
    
    /** 不用提示 */
    [LBLelinkKit enableLocalNotification:NO alertTitle:@"提示" alertBody:@"发现一台可以投屏的设备~"];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
