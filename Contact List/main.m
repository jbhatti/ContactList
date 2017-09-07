//
//  main.m
//  Contact List
//
//  Created by Jaison Bhatti on 2017-09-07.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL inContactsApp = YES;
        
        ContactList * addToContactList = [[ContactList alloc] init];
        
        
        while (inContactsApp) {
        
        // Task 1 Main menu and user input
        
            InputCollector *newInputCollector = [[InputCollector alloc] init]; // initialize InputCollector to use in main.m and to be able to display Menu
        
            NSString *displayMenu = [newInputCollector inputForPrompt:@"\nWhat would you like to do?\nnew - Create a new contact \nlist - List all contacts \nquit - Exit Application"]; //added argument for inputForPrompt

            // Task 2 Implement Exit functionality
            if ([displayMenu isEqualToString:@"quit"]) {
                inContactsApp = NO;
                NSLog (@"Goodbye!");
                
                // Task 3 Implement contact creation
            } else if ([displayMenu isEqualToString:@"new"]) {
                Contact *newContact = [[Contact alloc] init];
                NSString *newContactName = [newContact name];
                NSString *newContactEmail = [newContact email];
                
                    
            }
            
        }
        
    }
    return 0;
}
