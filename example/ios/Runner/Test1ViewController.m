//
//  Test1ViewController.m
//  Runner
//
//  Created by 车德超 on 2020/5/25.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//

#import "Test1ViewController.h"
#import <FlutterBoost.h>

@interface Test1ViewController ()

@property(strong, nonatomic) FlutterBasicMessageChannel *channel;

@end

@implementation Test1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.channel = [[FlutterBasicMessageChannel alloc] initWithName:@"com.youdao/jsbridge_core_msg" binaryMessenger:FlutterBoostPlugin.sharedInstance.currentViewController.binaryMessenger codec:FlutterStringCodec.sharedInstance];
    [self.channel setMessageHandler:^(id  _Nullable message, FlutterReply  _Nonnull callback) {
        NSLog(@"im revicer %@",message);
    }];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

@end
