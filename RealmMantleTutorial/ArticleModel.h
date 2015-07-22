//
//  ArticleModel.h
//  RealmMantleTutorial
//
//  Created by Marcin Kmiec on 30.06.2015.
//  Copyright (c) 2015 Marcin Kmiec. All rights reserved.
//

#import "MTLModel.h"
#import <Mantle/Mantle.h>

@interface ArticleModel : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *leadParagraph;
@property (nonatomic, copy) NSString *url;

@end
