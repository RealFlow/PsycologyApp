//
//  IRTestAbstract.h
//  IriaPsico
//
//  Created by Daniel Gaston on 29/03/14.
//  Copyright (c) 2014 Iria Psico App. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IRTestParent : NSObject

@property(nonatomic, readwrite, strong) NSMutableArray *questionsItems;
@property(nonatomic, readwrite, strong) NSMutableArray *questionList;
@property(nonatomic, readwrite, strong) NSMutableArray *answerList;

-(void) initQuestionItems;
@end
