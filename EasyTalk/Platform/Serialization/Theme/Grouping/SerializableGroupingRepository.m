//
//  SerializableGroupingRepository.m
//  ESGILibrary
//
//  Created by Benoit BRIATTE on 05/10/2015.
//  Copyright © 2015 Digipolitan. All rights reserved.
//

#import "SerializableGroupingRepository.h"

@implementation SerializableGroupingRepository

- (instancetype) initWithFileName:(NSString*)filename {
    if( (self = [super init]) ) {
        NSArray* documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        filePath_ = [[documentPaths objectAtIndex:0] stringByAppendingPathComponent:filename];
        groupingList_ = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath_];
    }
    return self;
}

- (void) saveGrouping:(Grouping*)br {
    if(groupingList_ == nil) {
        groupingList_ = [[NSMutableArray alloc] init];
    }
    NSInteger indexOf = [groupingList_ indexOfObject:br];
    if(indexOf != NSNotFound) {
        [groupingList_ replaceObjectAtIndex:indexOf withObject:br];
    } else {
        [groupingList_ addObject:br];
    }
    [NSKeyedArchiver archiveRootObject:groupingList_ toFile:filePath_];
}

- (void) deleteGrouping:(Grouping*)br {
    [groupingList_ removeObject:br];
    [NSKeyedArchiver archiveRootObject:groupingList_ toFile:filePath_];
}

- (NSArray<Grouping*>*) getAll {
    return groupingList_;
}

- (Grouping*) searchGroupingWithName:(NSString*)name {
    for(Grouping* br in groupingList_) {
        if([br.name isEqualToString:name]) {
            return br;
        }
    }
    return nil;
}

@end
