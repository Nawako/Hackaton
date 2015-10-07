//
//  ViewController.m
//  EasyTalk
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import "ViewController.h"
#import <WatchConnectivity/WatchConnectivity.h>
#import "IGroupingRepository.h"

@interface ViewController () <WCSessionDelegate>

@end

@implementation ViewController

//- (id<IGroupingRepository>)blurayRepository {
//    return [[BlurayRepositoryFactory sharedInstance] blurayRepository];
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a ]
    
    if ([WCSession defaultSession].paired && [WCSession defaultSession].watchAppInstalled) {
        [[WCSession defaultSession] transferUserInfo:@{
                                                       @"CAT" : @("TODO")
                                                       }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
