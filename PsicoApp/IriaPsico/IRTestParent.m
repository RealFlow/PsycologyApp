//
//  IRTestAbstract.m
//  IriaPsico
//
//  Created by Daniel Gaston on 29/03/14.
//  Copyright (c) 2014 Iria Psico App. All rights reserved.
//

#import "IRTestParent.h"
#import "IRTestQuestion.h"

@implementation IRTestParent


-(void) initQuestionItems
{
    self.questionsItems = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [self.questionList count]; i++ )
    {
        IRTestQuestion *testQuestion = [[IRTestQuestion alloc] initWithAttributes:[self.questionList objectAtIndex:i] Answers:[(NSNumber*)[self.answerList objectAtIndex:i] integerValue]];
        
        [self.questionsItems addObject:testQuestion];
        
    }

}
@end

