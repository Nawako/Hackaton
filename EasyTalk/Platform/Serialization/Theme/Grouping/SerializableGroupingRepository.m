//
//  GroupingRepositoryFactory.m
//  EasyTalk
//
//  Created by Nawako on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "GroupingRepositoryFactory.h"
#import "MockGroupingRepository.h"
// #import "SerializableGroupingRepository.h"

static GroupingRepositoryFactory* sharedInstance_ = nil;

@implementation GroupingRepositoryFactory

+ (instancetype)sharedInstance {
    if(sharedInstance_ == nil) {
        sharedInstance_ = [[GroupingRepositoryFactory alloc] init];
    }
    return sharedInstance_;
}

- (id<IGroupingRepository>)blurayRepository {
    if(!groupingRepository_) {
        groupingRepository_ = [[MockGroupingRepository alloc] init];
       // groupingRepository_ = [[SerializableBlurayRepository alloc] initWithFileName:@"bluray.archive"];
    }
    return groupingRepository_;
}

@end
