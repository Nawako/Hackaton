//
//  WKInterfaceController+Refresh.m
//  EasyTalk
//
//  Created by Etudiant on 08/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "WKInterfaceController+Refresh.h"

@implementation WKInterfaceController (Refresh)

- (NSDictionary *)getUserInfo {
    NSString* documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    NSString* filePath = [documentPath stringByAppendingPathComponent:@"userinfo.archive"];
    NSDictionary* userInfo = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    
    return userInfo;
}

@end
