//
//  IRDetailViewController.h
//  IriaPsico
//
//  Created by Daniel Gaston on 29/03/14.
//  Copyright (c) 2014 Iria Psico App. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IRTestParent.h"
#import "IRResultsViewController.h"
@interface IRDetailViewController : UIViewController <UISplitViewControllerDelegate>
{
    NSInteger _currentIndex;
    NSMutableArray *_values;
    IRTestParent *_test;
}


@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) IRResultsViewController *resultVC;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *answerButtons;
@property (weak, nonatomic) IBOutlet UIButton *undoButton;
- (IBAction)undoAction:(id)sender;
- (IBAction)answerButtonAction:(id)sender;
@end
