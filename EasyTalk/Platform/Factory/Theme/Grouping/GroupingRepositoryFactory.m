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

- (id<IGroupingRepository>)groupingRepository {
    if(!groupingRepository_) {
        groupingRepository_ = [[MockGroupingRepository alloc] init];
       // groupingRepository_ = [[SerializableBlurayRepository alloc] initWithFileName:@"grouping.archive"];
    }
    return groupingRepository_;
}

+ (NSDictionary *)dictionaryFromArrayOfGroupings:(NSArray<Grouping *> *)array {
    NSUInteger e = [array count];
    NSMutableDictionary* result = [NSMutableDictionary new];
    
    for(NSUInteger i = 0; i < e; ++i) {
        [result setObject:[array objectAtIndex:i].name forKey:[array objectAtIndex:i].idCat];
    }
    
    return result;
}

@end
