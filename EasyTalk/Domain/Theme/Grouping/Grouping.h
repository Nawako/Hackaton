//
//  Category.h
//  EasyTalk
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Grouping : NSObject <NSCoding> {
    
    @private
    NSString* name_;
    NSNumber* idCat_;
    BOOL isFavourite_;
}


@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSNumber* idCat;
@property (nonatomic, assign) BOOL isFavourite;


@end
