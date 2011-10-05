//
//  ProgressViewController.h
//  Goals
//
//  Created by Kory Calmes on 10/4/11.
//  Copyright 2011 Calmes Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgressViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSArray * listData;
    UINavigationController * navigationController;
}

@property (nonatomic, retain) UINavigationController * navigationController;
@property (nonatomic, retain) NSArray * listData;

@end
