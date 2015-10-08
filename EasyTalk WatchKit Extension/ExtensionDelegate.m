
//
//  ExtensionDelegate.m
//  EasyTalk WatchKit Extension
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "ExtensionDelegate.h"
#import <WatchConnectivity/WatchConnectivity.h>

@interface ExtensionDelegate () <WCSessionDelegate>

@end

@implementation ExtensionDelegate

- (void)applicationDidFinishLaunching {
    // Perform any final initialization of your application.
    
    if([WCSession class] && [WCSession isSupported]) {
        WCSession* session = [WCSession defaultSession];
        session.delegate = self;
        [session activateSession];
    }
    
}

- (void)applicationDidBecomeActive {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillResignActive {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, etc.
}

- (void)session:(WCSession *)session didReceiveUserInfo:(nonnull NSDictionary<NSString *,id> *)userInfo {
    
    NSString* documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    NSString* filePath = [documentPath stringByAppendingPathComponent:@"userinfo.archive"];
    [NSKeyedArchiver archiveRootObject:userInfo toFile:filePath];
    
}

- (void)session:(WCSession *)session didReceiveMessage:(NSDictionary<NSString *, id> *)message {
    NSString* msg = [message objectForKey:@"message"];
    NSLog(@"%@", msg);
}

@end
