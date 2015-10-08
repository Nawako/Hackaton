//
//  MockMotsRepository.m
//  EasyTalk
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "MockGroupingRepository.h"
#import "MockWordRepository.h"

@implementation MockWordRepository

- (void) saveWord:(Word*)word { }

- (void) deleteWord:(Word*)word { }

- (NSMutableArray<Word*>*) getAll {
    NSMutableArray* listWord = [NSMutableArray new];
    
    Word* m1 = [[Word alloc] init];
    m1.grp = [[Grouping alloc] init];
    m1.grp.name = @"Boulangerie";
    m1.grp.idCat = @(001);
    m1.idWord = @(001);
    m1.name = @"croissant";
    [listWord addObject:m1];
    
    Word* m4 = [[Word alloc] init];
    m4.grp = [[Grouping alloc] init];
    m4.grp.name = @"Boulangerie";
    m4.grp.idCat = @(001);
    m4.idWord = @(002);
    m4.name = @"Baguette";
    [listWord addObject:m4];
    
    Word* m3 = [[Word alloc] init];
    m3.grp = [[Grouping alloc] init];
    m3.grp.name = @"Boulangerie";
    m3.grp.idCat = @(001);
    m3.idWord = @(003);
    m3.name = @"chocolatine";
    [listWord addObject:m3];
    
    
    
    Word* m2 = [[Word alloc] init];
    m2.grp = [[Grouping alloc] init];
    m2.name= @"Ticket";
    m2.grp = [[Grouping alloc] init];
    m2.grp.name = @"Transport";
    m2.grp.idCat = @(002);
    m2.idWord = @(001);
    [listWord addObject:m2];
    
    Word* m5 = [[Word alloc] init];
    m5.name= @"Bus";
    m5.grp = [[Grouping alloc] init];
    m5.grp.name = @"Transport";
    m5.grp.idCat = @(002);
    m5.idWord = @(002);
    [listWord addObject:m5];
    
    Word* m6 = [[Word alloc] init];
    m6.name= @"Metro";
    m6.grp = [[Grouping alloc] init];
    m6.grp.name = @"Transport";
    m6.grp.idCat = @(002);
    m6.idWord = @(003);
    [listWord addObject:m6];
    
    
    
    Word* m7 = [[Word alloc] init];
    m7.name= @"Taille 36";
    m7.grp = [[Grouping alloc] init];
    m7.grp.name = @"Magasin de vetement";
    m7.grp.idCat = @(003);
    m7.idWord = @(001);
    [listWord addObject:m7];
    
    Word* m = [[Word alloc] init];
    m.name= @"Taille 38";
    m.grp = [[Grouping alloc] init];
    m.grp.name = @"Magasin de vetement";
    m.grp.idCat = @(003);
    m.idWord = @(002);
    [listWord addObject:m];
    
    Word* m8 = [[Word alloc] init];
    m8.name= @"Taille 40";
    m8.grp = [[Grouping alloc] init];
    m8.grp.name = @"Magasin de vetement";
    m8.grp.idCat = @(003);
    m8.idWord = @(003);
    [listWord addObject:m8];
    
    Word* m9 = [[Word alloc] init];
    m9.name= @"Bleu";
    m9.grp = [[Grouping alloc] init];
    m9.grp.name = @"Magasin de vetement";
    m9.grp.idCat = @(003);
    m9.idWord = @(004);
    [listWord addObject:m9];
    
    Word* m10 = [[Word alloc] init];
    m10.name= @"Blanc";
    m10.grp = [[Grouping alloc] init];
    m10.grp.name = @"Magasin de vetement";
    m10.grp.idCat = @(003);
    m10.idWord = @(005);
    [listWord addObject:m10];
    
    Word* m11 = [[Word alloc] init];
    m11.name= @"Noir";
    m11.grp = [[Grouping alloc] init];
    m11.grp.name = @"Magasin de vetement";
    m11.grp.idCat = @(003);
    m11.idWord = @(006);
    [listWord addObject:m11];
    
    return listWord;
}

- (Word*) searchWordWithName:(NSString*)name {
    return nil;
}


@end