//
//  MockGroupingRepository.h
//  EasyTalk
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IGroupingRepository.h"

@interface MockGroupingRepository : NSObject <IGroupingRepository>

- (NSArray<Grouping*>*) getAll;

@end
