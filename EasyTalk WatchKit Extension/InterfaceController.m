//
//  InterfaceController.m
//  EasyTalk WatchKit Extension
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    // pour avoir la dictation
    [self presentTextInputControllerWithSuggestions:@[@"hello", @"world"] allowedInputMode:WKTextInputModePlain completion:^(NSArray *results) {
        NSLog(@"results: %@", results);
    }];
    
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



