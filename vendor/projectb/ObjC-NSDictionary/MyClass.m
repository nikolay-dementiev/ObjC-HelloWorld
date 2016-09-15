//
//  MyClass.m
//  ObjC-NSDictionary
//
//  Created by Nikolay Dementiev on 12.09.16.
//  Copyright © 2016 mc373. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

- (void) dealloc {
		self.name = nil;
		self.adress = nil;
		[super dealloc];
}

@synthesize name;
@synthesize adress;


- (id) init {
		if (self = [super init]) {
				[self setName:@"Ira"];
				[self setAdress:@"K. Marksa st."];
		}

		return self;
}

@end
