//
//  ArticleRealm.m
//  RealmMantleTutorial
//
//  Created by Marcin Kmiec on 12.07.2015.
//  Copyright (c) 2015 Marcin Kmiec. All rights reserved.
//

#import "ArticleRealm.h"

@implementation ArticleRealm

- (id)initWithMantleModel:(ArticleModel *)articleModel{
    self = [super init];
    if(!self) return nil;
    
    self.leadParagraph = articleModel.leadParagraph;
    self.url = articleModel.url;
    
    return self;
}

@end
