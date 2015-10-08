//
//  GroupingInterfaceController.m
//  EasyTalk
//
//  Created by Etudiant on 08/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "GroupingInterfaceController.h"
#import "GroupingRowController.h"

@interface GroupingInterfaceController () {
    @private
    NSDictionary* userInfo_;
    NSArray* values_;
}

@end

@implementation GroupingInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
//    values_ = @[@"Boulangerie",@"Restaurant",@"Cinema"];
//    
//    NSUInteger count = [values_ count];
//    
//    [self.groupingTable setNumberOfRows:count withRowType:@"Grouping"];
//    
//    for (NSUInteger i = 0; i<count; i++) {
//        GroupingRowController* rowController = [self.groupingTable rowControllerAtIndex:i];
//        NSLog(@"%@", [values_ objectAtIndex:i]);
//        [rowController setLabel:[values_ objectAtIndex:i]];
//    }
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    [self getUserInfo];
    [self didReceiveUserInfo];
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
    
    [self.groupingTable setNumberOfRows:e withRowType:@"Grouping"];
    
    for(NSUInteger i = 0; i < e; ++i) {
        GroupingRowController* rowController = [self.groupingTable rowControllerAtIndex:i];
        [rowController setLabel:([userInfo_ objectForKey:@(i+1)])];
    }
}

- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {
    NSString* category = [userInfo_ objectForKey:@(rowIndex)];
    [self pushControllerWithName:@"WordController" context:category];
}

@end



