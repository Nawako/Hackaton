//
//  GroupingRowController.h
//  EasyTalk
//
//  Created by Etudiant on 08/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface GroupingRowController : NSObject

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *groupingLabel;

- (void) setLabel:(NSString*)groupingLabel;

@end
