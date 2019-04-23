//
//  NSURL+url.m
//  RuntimeTest
//
//  Created by du-lq on 2019/4/22.
//  Copyright © 2019 du-lq. All rights reserved.
//

#import "NSURL+url.h"
#import <objc/runtime.h>

@implementation NSURL (url)
+ (void)load{
    NSLog(@"load");
    Method m1=class_getClassMethod([NSURL class], @selector(URLWithString:));
    Method m2=class_getClassMethod([NSURL class], @selector(CF_URLWithStr:));
    method_exchangeImplementations(m1, m2);
}
+(instancetype)CF_URLWithStr:(NSString *)URLString{
    //交换了两个方法
    NSURL *url = [NSURL CF_URLWithStr:URLString];//注意这里不能再调用系统的方法
    if (!url) {
        NSLog(@"url为空");
    }
    return url;
}
@end
