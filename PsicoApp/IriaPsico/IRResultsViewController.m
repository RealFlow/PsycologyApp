//
//  IRResultsViewController.m
//  IriaPsico
//
//  Created by Daniel Gaston on 29/03/14.
//  Copyright (c) 2014 Iria Psico App. All rights reserved.
//

#import "IRResultsViewController.h"


@implementation IRResultsViewController
@synthesize resultLabel, result;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



-(void) setResult:(NSNumber*)res
{
    
    result = res;
    [self showResult];
}

-(void) showResult
{
    NSString *total = [NSString stringWithFormat:@"%d",[self.result integerValue]];
    self.resultLabel.text = total;

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self showResult];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
