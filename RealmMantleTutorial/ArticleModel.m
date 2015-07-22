//
//  ArticleModel.m
//  RealmMantleTutorial
//
//  Created by Marcin Kmiec on 30.06.2015.
//  Copyright (c) 2015 Marcin Kmiec. All rights reserved.
//

#import "ArticleModel.h"

@implementation ArticleModel

#pragma mark - Mantle JSONKeyPathsByPropertyKey

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"leadParagraph": @"lead_paragraph",
             @"url": @"web_url"
             };
}

@end


