//
//  MockCategorieRepository.m
//  EasyTalk
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "MockGroupingRepository.h"

@implementation MockGroupingRepository

- (void) saveGrouping:(id)gr { }

- (void) deleteGrouping:(id)gr { }

- (NSArray<Grouping*>*) getAll {
    NSMutableArray* listGroup = [NSMutableArray new];
    
    Grouping* gr1 = [[Grouping alloc] init];
    gr1.name = @"Boulangerie";
    gr1.idCat = @(001);
    [listGroup addObject:gr1];
    
    Grouping* gr2 = [[Grouping alloc] init];
    gr2.name = @"Transport";
    gr2.idCat = @(002);
   
    [listGroup addObject:gr2];
    
    return listGroup;
}

- (Grouping*) searchGroupingWithName:(NSString *)name {
    return nil;
}

@end
