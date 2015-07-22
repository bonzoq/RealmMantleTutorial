//
//  ArticleListResponseModel.h
//  RealmMantleTutorial
//
//  Created by Marcin Kmiec on 30.06.2015.
//  Copyright (c) 2015 Marcin Kmiec. All rights reserved.
//

#import "MTLModel.h"
#import <Mantle/Mantle.h>
#import "ArticleModel.h"

@interface ArticleListResponseModel : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSArray *articles;
@property (nonatomic, copy) NSString *status;

@end