//
//  APIManager.h
//  RealmMantleTutorial
//
//  Created by Marcin Kmiec on 29.06.2015.
//  Copyright (c) 2015 Marcin Kmiec. All rights reserved.
//

#import "SessionManager.h"
#import "ArticleListRequestModel.h"
#import "ArticleListResponseModel.h"

@interface APIManager : SessionManager

- (NSURLSessionDataTask *)getArticlesWithRequestModel:(ArticleListRequestModel *)requestModel success:(void (^)(ArticleListResponseModel *responseModel))success failure:(void (^)(NSError *error))failure;

@end
