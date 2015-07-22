//
//  ArticleListRequestModel.h
//  RealmMantleTutorial
//
//  Created by Marcin Kmiec on 29.06.2015.
//  Copyright (c) 2015 Marcin Kmiec. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"

typedef enum : NSUInteger {
    RelevanceOrder,
    DateOrder
} Order;

@interface ArticleListRequestModel : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *query;
@property (nonatomic, copy) NSDate *articlesFromDate;
@property (nonatomic, copy) NSDate *articlesToDate;

+ (NSDateFormatter *)dateFormatter;

@end
