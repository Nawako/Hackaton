//
//  GroupingInterfaceController.m
//  EasyTalk
//
//  Created by Etudiant on 08/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "WKInterfaceController+Refresh.h"
#import "Grouping.h"
#import "GroupingInterfaceController.h"
#import "GroupingRowController.h"
#import <WatchConnectivity/WatchConnectivity.h>

@interface GroupingInterfaceController () <WCSessionDelegate> {
    @private
    NSDictionary* userInfo_;
    NSArray<Grouping*>* values_;
}

@end

@implementation GroupingInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    
    // values_ = @[@"Boulangerie",@"Restaurant",@"Cinema"];
    
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    userInfo_ = [super getUserInfo];
    NSLog(@"%@", userInfo_);
    [self userInfoReceived];
    NSLog(@"Value : %@", [userInfo_ objectForKey:@(001)]);
}

- (void) userInfoReceived {
    NSUInteger count = [userInfo_ count];
    
    [self.groupingTable setNumberOfRows:count withRowType:@"Grouping"];
    
    for (NSUInteger i = 0; i<count; i++) {
        GroupingRowController* rowController = [self.groupingTable rowControllerAtIndex:i];
        [rowController setLabel:([userInfo_ objectForKey:@(i+1)])];
    }
    
    
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (void)session:(WCSession *)session didReceiveMessage:(NSDictionary<NSString *,id> *)message {
    NSLog(@"%@", message);
}


@end



