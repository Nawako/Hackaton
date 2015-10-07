//
//  GroupingRepositoryFactory.h
//  EasyTalk
//
//  Created by Nawako on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IGroupingRepository.h"

@interface SerializableGroupingRepository : NSObject <IGroupingRepository> {
@private
    NSString* filePath_;
    NSMutableArray<Grouping*>* groupingList_;
}

- (instancetype) initWithFileName:(NSString*)filename;

@end
