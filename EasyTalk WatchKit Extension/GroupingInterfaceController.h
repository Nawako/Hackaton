//
//  GroupingInterfaceController.h
//  EasyTalk
//
//  Created by Etudiant on 08/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface GroupingInterfaceController : WKInterfaceController <WKExtensionDelegate>

@property (strong, nonatomic) IBOutlet WKInterfaceTable *groupingTable;

@end
