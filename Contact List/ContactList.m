//
//  ContactList.m
//  Contact List
//
//  Created by Jaison Bhatti on 2017-09-07.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _storeContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [_storeContacts addObject:newContact];
}

-(void) print {
    int contactKey = 0;
    
    for (Contact *contacts in _storeContacts){
        NSLog(@"#%i: <%@ %@> ()", contactKey, contacts.name, contacts.email);
        contactKey++;
    }
}

@end
