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
    NSArray* values_;
}

@end

@implementation GroupingInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    values_ = @[@"Boulangerie",@"Restaurant",@"Cinema"];
    
    NSUInteger count = [values_ count];
    
    [self.groupingTable setNumberOfRows:count withRowType:@"Grouping"];
    
    for (NSUInteger i = 0; i<count; i++) {
        GroupingRowController* rowController = [self.groupingTable rowControllerAtIndex:i];
        NSLog(@"%@", [values_ objectAtIndex:i]);
        [rowController setLabel:[values_ objectAtIndex:i]];
    }
    
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


//- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {
//    [self pushControllerWithName:(nonnull NSString *) context:<#(nullable id)#>]
//}

@end



