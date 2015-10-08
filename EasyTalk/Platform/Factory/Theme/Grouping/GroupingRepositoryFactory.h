//
//  GroupingRepositoryFactory.h
//  EasyTalk
//
//  Created by Nawako on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IGroupingRepository.h"

@interface GroupingRepositoryFactory : NSObject {
    @private
    id<IGroupingRepository> groupingRepository_;
}

+ (instancetype) sharedInstance;

- (id<IGroupingRepository>) groupingRepository;
+ (NSDictionary*) dictionaryFromArrayOfGroupings:(NSArray<Grouping*>*) array;

@end
