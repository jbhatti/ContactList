//
//  ContactList.h
//  Contact List
//
//  Created by Jaison Bhatti on 2017-09-07.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray * storeContacts;

-(void)addContact:(Contact *)newContact;



@end
