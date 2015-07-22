//
//  SessionManager.h
//  RealmMantleTutorial
//
//  Created by Marcin Kmiec on 29.06.2015.
//  Copyright (c) 2015 Marcin Kmiec. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface SessionManager : AFHTTPSessionManager

+ (id)sharedManager;

@end
