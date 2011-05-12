//
//  MusicRootViewController.h
//  Simple
//
//  Created by YouMay on 11-5-5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MusicRootViewController : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    NSMutableArray *news;
    UITableView *myTableView;
    UIActivityIndicatorView *spinner;
}

@property (nonatomic,retain) NSMutableArray *news;
@property (nonatomic, retain) IBOutlet UITableView *myTableView;
@end
