//
//  IMots.h
//  EasyTalk
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Word.h"

@protocol IWordRepository <NSObject>
@required
- (void) saveWord:(Word*)word;
- (void) deleteWord:(Word*)word;
- (NSArray<Word*>*) getAll;
- (Word*) searchWordWithName:(NSString*)name;

@end
