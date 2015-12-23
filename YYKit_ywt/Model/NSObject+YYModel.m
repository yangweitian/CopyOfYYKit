//
//  NSObject+YYModel.m
//  YYKit_ywt
//
//  Created by YangWeitian on 15/12/23.
//  Copyright © 2015年 YangWeitian. All rights reserved.
//

#import "NSObject+YYModel.h"

@implementation NSObject (YYModel)
+ (NSDictionary *)_yy_dictionaryWithJSON:(id)json {
    if (!json || json == (id)kCFNull) return nil;
    NSDictionary *dic = nil;
    NSData *jsonData = nil;
    if ([json isKindOfClass:[NSDictionary class]]) {
        dic = json;
    } else if ([json isKindOfClass:[NSString class]]) {
        jsonData = [(NSString *)json dataUsingEncoding:NSUTF8StringEncoding];
    } else if ([json isKindOfClass:[NSData class]]) {
        jsonData = json;
    }
    if (jsonData) {
        dic = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:NULL];
        if (![dic isKindOfClass:[NSDictionary class]]) dic = nil;
    }
    
    return dic;
}

+ (instancetype)modelWithJSON:(id)json {
    NSDictionary *dic = [self _yy_dictionaryWithJSON:json];
    return [self modelWithDictionary:dic];
}

+ (instancetype)modelWithDictionary:(NSDictionary *)dictionary{
    return nil;
}

@end
