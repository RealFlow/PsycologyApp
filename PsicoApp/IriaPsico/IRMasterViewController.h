//
//  IRMasterViewController.h
//  IriaPsico
//
//  Created by Daniel Gaston on 29/03/14.
//  Copyright (c) 2014 Iria Psico App. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IRDetailViewController;

@interface IRMasterViewController : UITableViewController


@property (strong, nonatomic) NSArray *testList;

@property (strong, nonatomic) IRDetailViewController *detailViewController;

@end
