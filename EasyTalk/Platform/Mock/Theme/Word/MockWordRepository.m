//
//  MockMotsRepository.m
//  EasyTalk
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "MockWordRepository.h"

@implementation MockWordRepository

- (void) saveWord:(Word*)word { }

- (void) deleteWord:(Word*)word { }

- (NSArray<Word*>*) getAll {
    NSMutableArray* library = [NSMutableArray new];
    
    Word* m1 = [[Word alloc] init];
    m1.categ = @"Boulangerie";
    m1.idWord = @(001);
    m1.name = @"croissant";
    
    [library addObject:m1];
    
    Word* m2 = [[Word alloc] init];
    m2.name= @"Ticket";
    m2.categ = @"Transport";
    m2.idWord = @(002);
    
    [library addObject:m2];
    
    return library;
}

- (Word*) searchWordWithName:(NSString*)name {
    return nil;
}


@end
