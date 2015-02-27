//
//  FMDBViewController.m
//  myFMDB
//
//  Created by admin on 14-8-12.
//  Copyright (c) 2014年 ___DNEUSER___. All rights reserved.
//

#import "FMDBViewController.h"
#import "FMDBManager.h"
#import "UserDB.h"

@interface FMDBViewController ()

@end

@implementation FMDBViewController
@synthesize db;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    db = [[UserDB alloc]init];
    NSMutableDictionary * dic = [[NSMutableDictionary alloc] init];
    NSArray * array = [[NSArray alloc]initWithObjects:@"name VARCHAR(50)",@"description VARCHAR(100)", nil];
    [dic setValue:@"SUser4" forKey:@"tableName"];
    [dic setValue:array forKey:@"array"];
    if(![db exitBaseTable:@"SUser4"]){
        [db createDataBaseTable:dic];
    }
    //[fmdbManager closeDataBase];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)delegateAll:(id)sender {
    if ([db open]) {
        NSDictionary * dic = [[NSDictionary alloc]init];
        [db deleteInfoemation:dic];
    }
    
       [db close];
}

- (IBAction)addInfoemation:(id)sender {
    
    if ([db open]) {
        
        NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
        [dic setValue:@"SUser3" forKey:@"tableName"];
        [dic setValue:@"cc" forKey:@"name"];
        [dic setValue:@"gelloword" forKey:@"description"];
        [db saveInformation:dic];
    }
        [db close];
    
//    NSURL*url = [NSURL URLWithString:@"CcMoviePlay.com:"];
//    [[UIApplication sharedApplication] openURL:url];
    
}
@end
