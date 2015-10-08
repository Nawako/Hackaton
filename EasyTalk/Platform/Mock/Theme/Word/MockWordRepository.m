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

- (NSMutableArray<Word*>*) getAll {
    NSMutableArray* listWord = [NSMutableArray new];
    
    Word* m1 = [[Word alloc] init];
    m1.categ = @"Boulangerie";
    m1.idWord = @(001);
    m1.name = @"croissant";
    [listWord addObject:m1];
    
    Word* m4 = [[Word alloc] init];
    m1.categ = @"Boulangerie";
    m1.idWord = @(001);
    m1.name = @"Baguette";
    [listWord addObject:m4];
    
    Word* m3 = [[Word alloc] init];
    m1.categ = @"Boulangerie";
    m1.idWord = @(001);
    m1.name = @"chocolatine";
    [listWord addObject:m3];
    
    Word* m2 = [[Word alloc] init];
    m2.name= @"Ticket";
    m2.categ = @"Transport";
    m2.idWord = @(002);
    [listWord addObject:m2];
    
    return listWord;
}

- (Word*) searchWordWithName:(NSString*)name {
    return nil;
}


@end
