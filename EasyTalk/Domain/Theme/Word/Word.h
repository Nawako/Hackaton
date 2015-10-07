//
//  Word.h
//  EasyTalk
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Word : NSObject <NSCoding> {
    
@private
    NSString* name_;
    NSString* categ_;
    NSNumber* idWord_;
}


@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* categ;
@property (nonatomic, strong) NSNumber* idWord;

@end
