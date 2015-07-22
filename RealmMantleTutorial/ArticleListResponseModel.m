//
//  ArticleListResponseModel.m
//  RealmMantleTutorial
//
//  Created by Marcin Kmiec on 30.06.2015.
//  Copyright (c) 2015 Marcin Kmiec. All rights reserved.
//

#import "ArticleListResponseModel.h"

@class ArticleModel;

@implementation ArticleListResponseModel

#pragma mark - Mantle JSONKeyPathsByPropertyKey

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"articles" : @"response.docs",
             @"status" : @"status"
             };
}

#pragma mark - JSON Transformer

+ (NSValueTransformer *)articlesJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:ArticleModel.class];
}

@end
