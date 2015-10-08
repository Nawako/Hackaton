//
//  ViewController.h
//  EasyTalk
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Etudiant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IGroupingRepository.h"
#import "IWordRepository.h"

@interface ViewController : UIViewController

@property (nonatomic, readonly) id<IGroupingRepository> groupingRepository;
@property (nonatomic, readonly) id<IWordRepository> wordRepository;


@end

