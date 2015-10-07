//
//  WordRepositoryFactory.h
//  EasyTalk
//
//  Created by Nawako on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IWordRepository.h"

@interface SerializableWordRepository : NSObject <IWordRepository> {
@private
    NSString* filePath_;
    NSMutableArray<Word*>* wordList_;
}

- (instancetype) initWithFileName:(NSString*)filename;

@end
