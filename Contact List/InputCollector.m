//
//  InputCollector.m
//  Contact List
//
//  Created by Jaison Bhatti on 2017-09-07.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *) inputForPrompt: (NSString *)promptString {
    
    // receiving user input
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    
    
}

@end
