//
//  NSURL+url.h
//  RuntimeTest
//
//  Created by du-lq on 2019/4/22.
//  Copyright © 2019 du-lq. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSURL (url)
+(instancetype)CF_URLWithStr:(NSString *)URLString;
@end

NS_ASSUME_NONNULL_END
