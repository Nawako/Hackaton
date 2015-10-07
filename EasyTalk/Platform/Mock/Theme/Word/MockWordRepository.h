//
//  MockMotsRepository.h
//  EasyTalk
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IWordRepository.h"

@interface MockWordRepository : NSObject <IWordRepository>

- (NSArray<Word*>*) getAll;

@end
