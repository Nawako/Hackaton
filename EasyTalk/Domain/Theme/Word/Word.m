//
//  Word.m
//  EasyTalk
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "Word.h"

@implementation Word


- (instancetype) initWithCoder:(NSCoder *)aDecoder {
    if( (self = [super init]) ) {
        self.name = [aDecoder decodeObjectForKey:@"NAME"];
        self.idWord = [aDecoder decodeObjectForKey:@"ID"];
        self.grp = [aDecoder decodeObjectForKey:@"GRP"];
        self.fav = NO;
    }
    return self;
}

- (void) encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"NAME"];
    [aCoder encodeObject:self.idWord forKey:@"ID"];
    [aCoder encodeObject:self.grp forKey:@"GRP"];
}

- (NSString *) description {
    return [NSString stringWithFormat:@"Word [name=%@,  id=%@, grouping=%@, favorite=%d]", self.name, self.idWord, self.grp, self.fav];
}


@end
