//
//  ViewController.m
//  EasyTalk
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "ViewController.h"
#import <WatchConnectivity/WatchConnectivity.h>
#import "GroupingRepositoryFactory.h"

@interface ViewController () <WCSessionDelegate>

@end

@implementation ViewController

@dynamic groupingRepository;

- (id<IGroupingRepository>)groupingRepository {
    return [[GroupingRepositoryFactory sharedInstance] groupingRepository];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"lol");
    // Do any additional setup after loading the view, typically from a ]
    
    NSArray<Grouping*>* allGrouping = [self.groupingRepository getAll];
    
    // Transfert de toutes les catégories vers la watch
    if ([WCSession defaultSession].paired && [WCSession defaultSession].watchAppInstalled) {
        [[WCSession defaultSession] transferUserInfo:@{@"allGrouping": allGrouping}];
    }
    NSLog(@"%@", allGrouping);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
