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
        
        ContactList * contactList = [[ContactList alloc] init];
        
        
        while (inContactsApp) {
            
            // Task 1 Main menu and user input
            
            InputCollector *newInputCollector = [[InputCollector alloc] init]; // initialize InputCollector to use in main.m and to be able to inputData
            
            NSString *displayMenu = [newInputCollector inputForPrompt:@"\nWhat would you like to do?\nnew - Create a new contact \nlist - List all contacts \nquit - Exit Application"]; //added argument for inputForPrompt
            
            // Task 2 Implement Exit functionality
            if ([displayMenu isEqualToString:@"quit"]) {
                inContactsApp = NO;
                NSLog (@"Goodbye!");
                
                // Task 3 Implement contact creation
            } else if ([displayMenu isEqualToString:@"new"]) {
                NSString *name = [newInputCollector inputForPrompt:@"Enter your name"];
                NSString *email = [newInputCollector inputForPrompt:@"Enter your email"];
                Contact *newContact = [[Contact alloc] init];
                newContact.email = email;
                newContact.name = name;
                [contactList.storeContacts addObject:newContact];
                
                // Task 4
            } else if ([displayMenu isEqualToString:@"list"]) {
                [contactList print];
            }
            
        }
        
    }
    return 0;
}
