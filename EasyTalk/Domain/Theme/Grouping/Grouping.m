//
//  Category.m
//  EasyTalk
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "Grouping.h"

@implementation Grouping


- (instancetype) initWithCoder:(NSCoder *)aDecoder {
    if( (self = [super init]) ) {
        self.name = [aDecoder decodeObjectForKey:@"NAME"];
        self.idCat = [aDecoder decodeObjectForKey:@"ID"];
    }
    return self;
}

- (void) encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"NAME"];
    [aCoder encodeObject:self.idCat forKey:@"ID"];
}


- (NSString *) description {
    return [NSString stringWithFormat:@"Categorie [name=%@,  id=%@]", self.name, self.idCat];
}


@end
