//
//  ViewController.m
//  RuntimeTest
//
//  Created by du-lq on 2019/4/22.
//  Copyright © 2019 du-lq. All rights reserved.
//

#import "ViewController.h"
#import "NSURL+url.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)loadView{
    NSLog(@"loadView");
    [super loadView];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url=[NSURL URLWithString:@"https://www.baidu.com"];
    [[UIApplication sharedApplication]openURL:url options:@{} completionHandler:nil];
    
//一个版本的变动
    //之前是V2.0,现在改动后令tag=3.0
    NSURL *url2= [NSURL URLWithString:nil];
    [[UIApplication sharedApplication]openURL:url2 options:@{} completionHandler:nil];

}


@end
