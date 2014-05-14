//
//  IRTestYesavage.m
//  IriaPsico
//
//  Created by Daniel Gaston on 29/03/14.
//  Copyright (c) 2014 Iria Psico App. All rights reserved.
//

#import "IRTestYesavage.h"
#import "IRTestQuestion.h"

@implementation IRTestYesavage

@synthesize questionsItems, questionList, answerList;
-(id) init
{
    self = [super init];
    if (self)
    {
        
        
        self.questionList =[NSMutableArray arrayWithObjects:@"1. ¿Qué día es hoy? (día, mes y año)",@"2. ¿Qué día de la semana es hoy?",@"3. ¿Cómo se llama este lugar o edificio?",@"4. ¿Cuál es su número de teléfono (si no tienen teléfono, preguntar dirección)",@"5. ¿Cuantos años tiene?",@"5. ¿En qué fecha nació usted?",@"7. ¿Quién es el actual Presidente del Gobierno?",@"8. ¿Quién fue el Presidente anterior?",@"9. ¿Cuál es el nombre completo de su madre?",@"10. Si a 20 le restamos 3 ¿quedan? Restar de 3 en 3 a partir de 20",nil];
        self.answerList = [NSMutableArray arrayWithObjects:[NSNumber numberWithInteger:1],[NSNumber numberWithInteger:1],[NSNumber numberWithInteger:1],[NSNumber numberWithInteger:1],[NSNumber numberWithInteger:1],[NSNumber numberWithInteger:1],[NSNumber numberWithInteger:1],[NSNumber numberWithInteger:1],[NSNumber numberWithInteger:1],[NSNumber numberWithInteger:1],[NSNumber numberWithInteger:1],nil];
        
        [self initQuestionItems];
        
    }
    return self;
}





@end
