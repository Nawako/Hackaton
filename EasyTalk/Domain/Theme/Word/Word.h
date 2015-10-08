//
//  Word.h
//  EasyTalk
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Grouping.h"

@interface Word : NSObject <NSCoding> {
    
@private
    NSString* name_;
    Grouping* grp_;
    NSNumber* idWord_;
    Boolean* fav_;
}


@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) Grouping* grp;
@property (nonatomic, strong) NSNumber* idWord;


@end
