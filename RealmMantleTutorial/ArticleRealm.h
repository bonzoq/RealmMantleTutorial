//
//  ArticleRealm.h
//  RealmMantleTutorial
//
//  Created by Marcin Kmiec on 12.07.2015.
//  Copyright (c) 2015 Marcin Kmiec. All rights reserved.
//

#import <Realm/Realm.h>
#import "ArticleModel.h"

@interface ArticleRealm : RLMObject

@property NSString *leadParagraph;
@property NSString *url;

- (id)initWithMantleModel:(ArticleModel *)articleModel;

@end

