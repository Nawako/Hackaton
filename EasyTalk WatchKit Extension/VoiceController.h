//
//  VoiceController.h
//  EasyTalk
//
//  Created by Nawako on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface VoiceController : WKInterfaceController

@property (strong, nonatomic) IBOutlet WKInterfaceButton *voiceActivateButton;

- (void) voiceActivate;

@end
