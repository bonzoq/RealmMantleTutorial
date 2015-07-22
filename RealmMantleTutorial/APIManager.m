//
//  APIManager.m
//  RealmMantleTutorial
//
//  Created by Marcin Kmiec on 29.06.2015.
//  Copyright (c) 2015 Marcin Kmiec. All rights reserved.
//

#import "APIManager.h"
#import "Mantle.h"

static NSString *const kArticlesListPath = @"/svc/search/v2/articlesearch.json";
#error - API key is missing
static NSString *const kApiKey = @"replace this with an API key";

@implementation APIManager

- (NSURLSessionDataTask *)getArticlesWithRequestModel:(ArticleListRequestModel *)requestModel
                                              success:(void (^)(ArticleListResponseModel *responseModel))success
                                              failure:(void (^)(NSError *error))failure{
    
    NSDictionary *parameters = [MTLJSONAdapter JSONDictionaryFromModel:requestModel error:nil];
    NSMutableDictionary *parametersWithKey = [[NSMutableDictionary alloc] initWithDictionary:parameters];
    [parametersWithKey setObject:kApiKey forKey:@"api-key"];
    
    return [self GET:kArticlesListPath parameters:parametersWithKey
             success:^(NSURLSessionDataTask *task, id responseObject) {
        
        NSDictionary *responseDictionary = (NSDictionary *)responseObject;
        
        NSError *error;
        ArticleListResponseModel *list = [MTLJSONAdapter modelOfClass:ArticleListResponseModel.class
                                                   fromJSONDictionary:responseDictionary error:&error];
        success(list);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
        failure(error);
        
    }];
}

@end
