//
//  FMDBViewController.h
//  myFMDB
//
//  Created by admin on 14-8-12.
//  Copyright (c) 2014年 ___DNEUSER___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserDB.h"

@interface FMDBViewController : UIViewController

@property(nonatomic,strong)UserDB *db;
- (IBAction)delegateAll:(id)sender;
- (IBAction)addInfoemation:(id)sender;

@end
