//
//  IRTestQuestion.m
//  IriaPsico
//
//  Created by Daniel Gaston on 29/03/14.
//  Copyright (c) 2014 Iria Psico App. All rights reserved.
//

#import "IRTestQuestion.h"

@implementation IRTestQuestion
@synthesize question, possibleAnswers;
- (id) initWithAttributes:(NSString*)questionValue Answers:(NSInteger)possibleAnswersValue
{
    self = [super init];
    if (self)
    {
        self.question = questionValue;
        self.possibleAnswers = possibleAnswersValue;
    }
    return self;
}

@end
