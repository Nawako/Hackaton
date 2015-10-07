//
//  SerializableWordRepository.m
//  ESGILibrary
//
//  Created by Benoit BRIATTE on 05/10/2015.
//  Copyright © 2015 Digipolitan. All rights reserved.
//

#import "SerializableWordRepository.h"

@implementation SerializableWordRepository

- (instancetype) initWithFileName:(NSString*)filename {
    if( (self = [super init]) ) {
        NSArray* documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        filePath_ = [[documentPaths objectAtIndex:0] stringByAppendingPathComponent:filename];
        wordList_ = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath_];
    }
    return self;
}

- (void) saveWord:(Word*)br {
    if(wordList_ == nil) {
        wordList_ = [[NSMutableArray alloc] init];
    }
    NSInteger indexOf = [wordList_ indexOfObject:br];
    if(indexOf != NSNotFound) {
        [wordList_ replaceObjectAtIndex:indexOf withObject:br];
    } else {
        [wordList_ addObject:br];
    }
    [NSKeyedArchiver archiveRootObject:wordList_ toFile:filePath_];
}

- (void) deleteWord:(Word*)br {
    [wordList_ removeObject:br];
    [NSKeyedArchiver archiveRootObject:wordList_ toFile:filePath_];
}

- (NSArray<Word*>*) getAll {
    return wordList_;
}

- (Word*) searchWordWithName:(NSString*)name {
    for(Word* br in wordList_) {
        if([br.name isEqualToString:name]) {
            return br;
        }
    }
    return nil;
}

@end
