//
//  VoiceController.m
//  EasyTalk
//
//  Created by Nawako on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "VoiceController.h"

@implementation VoiceController

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
}

- (void) voiceActivate {
    // Pour avoir la dictation
    [self presentTextInputControllerWithSuggestions:@[@"hello", @"world"] allowedInputMode:WKTextInputModePlain completion:^(NSArray *results) {
        NSLog(@"results: %@", results);
    }];
}

- (IBAction)touchVoiceActivate {
    [self voiceActivate];
}

@end