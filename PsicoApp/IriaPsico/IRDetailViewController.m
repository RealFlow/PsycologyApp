//
//  IRDetailViewController.m
//  IriaPsico
//
//  Created by Daniel Gaston on 29/03/14.
//  Copyright (c) 2014 Iria Psico App. All rights reserved.
//

#import "IRDetailViewController.h"
#import "IRTestYesavage.h"
#import "IRTestParent.h"
#import "IRTestQuestion.h"
#import "IRResultsViewController.h"

@implementation IRDetailViewController
@synthesize resultVC;


#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self initTest];
    }
    
}

- (void)initTest
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        _values = [[NSMutableArray alloc] init];
        _currentIndex = 0;
        self.answerButtons.hidden= NO;
        self.navigationController.navigationBar.topItem.title = (NSString*)self.detailItem;

        if ([(NSString*)self.detailItem isEqualToString:@"Yesavage"])
        {
            _test= [[IRTestYesavage alloc] init];
            
            if ([_test.questionsItems count] > 0)
            {
                self.undoButton.hidden = NO;
                IRTestQuestion *testQuestion = [self getNextQuestion];
                if (testQuestion!= nil)
                    [self configureQuestion: testQuestion];
                
                
                
            } else {
                self.questionLabel.text = @"El test no contiene preguntas";
            }
            
        }
        
    }
}

-(IRTestQuestion*) getNextQuestion
{
    IRTestQuestion *result = nil;
    
    if([_test.questionsItems count] > _currentIndex)
    {
        result = [_test.questionsItems objectAtIndex:_currentIndex];

    }
    return result;
}
                             
-(void) configureQuestion:(IRTestQuestion*)quest
{
    self.questionLabel.text = quest.question;
    NSInteger answers = quest.possibleAnswers;
    
    for (int i = 0; i < self.answerButtons.numberOfSegments; i++)
    {
        [self.answerButtons setEnabled:NO forSegmentAtIndex:i];
    }
    
    for (int j = 0; j <= answers; j++)
    {
        [self.answerButtons setEnabled:YES forSegmentAtIndex:j];
    }
    
}

- (void)initLayout
{
    self.questionLabel.text = @"Seleccione un test para empezar";
    self.answerButtons.hidden= YES;
    self.undoButton.hidden = YES;
    
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont fontWithName:@"Heiti SC" size:30.0f]};
    [self.answerButtons setTitleTextAttributes:attributes
                                      forState:UIControlStateNormal];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self initLayout];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = @"Tests";
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
}

- (IBAction)undoAction:(id)sender {
    
    if (_currentIndex != 0)
    {
        _currentIndex = _currentIndex -1;
        [_values removeLastObject];
        IRTestQuestion *testQuestion = [self getNextQuestion];
        if (testQuestion!= nil){
            [self configureQuestion: testQuestion];
        }
        
    }
}

- (IBAction)answerButtonAction:(id)sender
{

    NSInteger value = self.answerButtons.selectedSegmentIndex;
    
    [_values addObject:[NSNumber numberWithInteger:value]];
    
     _currentIndex = _currentIndex +1;

    
    
    
    IRTestQuestion *testQuestion = [self getNextQuestion];
    if (testQuestion!= nil){
        [self configureQuestion: testQuestion];
    } else{
        [self performSegueWithIdentifier:@"goToResult" sender:self];

    }
    
     
     
     
}

#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"goToResult"]) {
		
        NSInteger total = 0;
        for (NSNumber *value in _values)
        {
            total = total + [value integerValue];
        }
        
        [self initLayout];
        NSLog(@"Puntuacion total: %d", total);

        IRResultsViewController *resultVC = segue.destinationViewController;
        [resultVC setResult:[NSNumber numberWithInteger:total]];

        
        
	} else {
		
	}
}




@end
