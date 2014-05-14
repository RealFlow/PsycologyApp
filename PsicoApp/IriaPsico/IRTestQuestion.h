//
//  IRTestQuestion.h
//  IriaPsico
//
//  Created by Daniel Gaston on 29/03/14.
//  Copyright (c) 2014 Iria Psico App. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IRTestQuestion : NSObject

@property(nonatomic, readwrite, strong) NSString *question;
@property(nonatomic, readwrite, assign) NSInteger possibleAnswers;
- (id) initWithAttributes:(NSString*)questionValue Answers:(NSInteger)possibleAnswersValue;

@end

