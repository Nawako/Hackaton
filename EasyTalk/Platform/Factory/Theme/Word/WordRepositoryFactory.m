//
//  WordRepositoryFactory.m
//  EasyTalk
//
//  Created by Nawako on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "WordRepositoryFactory.h"
#import "MockWordRepository.h"
// #import "SerializableWordRepository.h"

static WordRepositoryFactory* sharedInstance_ = nil;

@implementation WordRepositoryFactory

+ (instancetype)sharedInstance {
    if(sharedInstance_ == nil) {
        sharedInstance_ = [[WordRepositoryFactory alloc] init];
    }
    return sharedInstance_;
}

- (id<IWordRepository>)wordRepository {
    if(!wordRepository_) {
        wordRepository_ = [[MockWordRepository alloc] init];
    //  wordRepository_ = [[SerializableBlurayRepository alloc] initWithFileName:@"word.archive"];
    }
    return wordRepository_;
}

+ (NSDictionary *)dictionaryFromArrayOfWord:(NSArray<Word *> *)array {
    NSUInteger e = [array count];
    NSMutableDictionary* result = [NSMutableDictionary new];
    
    for(NSUInteger i = 0; i < e; ++i) {
        [result setObject:[array objectAtIndex:i].name forKey:[array objectAtIndex:i].idWord];
        [result setObject:[array objectAtIndex:i].grp.name forKey:[array objectAtIndex:i].grp.idCat];
    }
    
    return result;
}

@end
