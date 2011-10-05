//
//  GoalsViewController.h
//  Goals
//
//  Created by Kory Calmes on 10/4/11.
//  Copyright 2011 Calmes Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GoalsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSDictionary * goalsDictionary;
    NSArray * frequencies;
    NSArray * goals;
    UINavigationController * controller;
}

@property (nonatomic, retain) NSDictionary * goalsDictionary;
@property (nonatomic, retain) NSArray * frequencies;
@property (nonatomic, retain) NSArray * goals;
@property (nonatomic, retain) UINavigationController * controller;

@end
