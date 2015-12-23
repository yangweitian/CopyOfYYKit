//
//  NSObject+YYModel.h
//  YYKit_ywt
//
//  Created by YangWeitian on 15/12/23.
//  Copyright © 2015年 YangWeitian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (YYModel)

+ (instancetype)modelWithJSON:(id)json;
+ (instancetype)modelWithDictionary:(NSDictionary *)dictionary;
- (BOOL)modelSetWithJSON:(id)json;
- (BOOL)modelSetWithDictionary:(NSDictionary *)dictionary;
- (id)modelToJSONObject;
- (NSData *)modelToJSONData;
- (NSString *)modelToJSONString;
- (id)modelCopy;
- (void)modelEncodeWithCoder:(NSCoder *)aCoder;
- (id)modelInitWithCoder:(NSCoder *)aDecoder;
- (NSInteger)modelHash;
- (BOOL)modelIsEqual:(id)model;

@end

@interface NSArray (YYModel)

+ (NSArray *)modelArrayWithClass:(Class)cls json:(id)json;

@end

@interface NSDictionary (YYModel)

+ (NSDictionary *)modelDictionaryWithClass:(Class)cls json:(id)json;

@end

@protocol YYModel <NSObject>

@optional
+ (NSDictionary *)modelCustomPropertyMapper;
+ (NSDictionary *)modelContainerPropertyGenericClass;
+ (Class)modelCustomClassForDictionary:(NSDictionary *)dictionary;
+ (NSArray *)modelPropertyBlacklist;
+ (NSArray *)modelPropertyWhitelist;
- (BOOL)modelCustomTransformFromDictionary:(NSDictionary *)dictionary;
- (BOOL)modelCustomTransformToDictionary:(NSMutableDictionary *)dictionary;

@end