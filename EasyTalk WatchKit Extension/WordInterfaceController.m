//
//  WordInterfaceController.m
//  EasyTalk
//
//  Created by Etudiant on 08/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "WordInterfaceController.h"
#import "WordRowController.h"

@interface WordInterfaceController () {
    @private
    NSDictionary* userInfo_;
    NSArray* values_;
}

@end

@implementation WordInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
        
//    values_ = @[@"Croissant",@"Petit pains", @"Chouquettes", @"Autre"];
//    
//    NSUInteger count = [values_ count];
//    
//    [self.wordTable setNumberOfRows:count withRowType:@"Word"];
//    
//    for (NSUInteger i = 0; i<count; i++) {
//        WordRowController* rowController = [self.wordTable rowControllerAtIndex:i];
//        
//        NSLog(@"%@", [values_ objectAtIndex:i]);
//        [rowController setLabel:[values_ objectAtIndex:i]];
//    }

    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (NSDictionary *)getUserInfo {
    NSString* documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString* filePath = [documentPath stringByAppendingPathComponent:@"userinfo.archive"];
    
    return (userInfo_ = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath]);
}


- (void) didReceiveUserInfo {
    NSUInteger e = [userInfo_ count];
    
    [self.wordTable setNumberOfRows:e withRowType:@"Word"];
    
    for(NSUInteger i = 0; i < e; ++i) {
        WordRowController* rowController = [self.wordTable rowControllerAtIndex:i];
        [rowController setLabel:([userInfo_ objectForKey:@(i+1)])];
    }
}
@end



