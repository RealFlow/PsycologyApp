//
//  IRResultsViewController.h
//  IriaPsico
//
//  Created by Daniel Gaston on 29/03/14.
//  Copyright (c) 2014 Iria Psico App. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IRResultsViewController : UIViewController

@property (strong, nonatomic) NSNumber *result;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end
