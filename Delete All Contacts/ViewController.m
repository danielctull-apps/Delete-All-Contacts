//
//  ViewController.m
//  Delete All Contacts
//
//  Created by Daniel Tull on 13.10.2011.
//  Copyright (c) 2011 Daniel Tull. All rights reserved.
//

#import "ViewController.h"
#import <AddressBook/AddressBook.h>

@implementation ViewController

@synthesize textView;

- (void)viewDidLoad {
    [super viewDidLoad];
	
	ABAddressBookRef ref = ABAddressBookCreate();
	NSArray *people = (__bridge_transfer NSArray *)ABAddressBookCopyArrayOfAllPeople(ref);
	
	for (id record in people) {
		
		ABRecordRef recordRef = (__bridge_retained ABRecordRef)record;
		
		NSString *firstName = (__bridge_transfer NSString *)ABRecordCopyValue(recordRef, kABPersonFirstNameProperty);
		NSString *lastName = (__bridge_transfer NSString *)ABRecordCopyValue(recordRef, kABPersonLastNameProperty);
		
		self.textView.text = [NSString stringWithFormat:@"%@\nDeleting %@ %@", self.textView.text, firstName, lastName];
		
		ABAddressBookRemoveRecord(ref, recordRef, NULL);
	}
	
	ABAddressBookSave(ref, NULL);
	
}

@end
