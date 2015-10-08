//
//  WordRepositoryFactory.h
//  EasyTalk
//
//  Created by Nawako on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IWordRepository.h"

@interface WordRepositoryFactory : NSObject {
    @private
    id<IWordRepository> wordRepository_;
}

+ (instancetype) sharedInstance;

- (id<IWordRepository>) wordRepository;
+ (NSDictionary*) dictionaryFromArrayOfWord:(NSArray<Word*>*) array;

@end
