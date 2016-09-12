//
//  CategoryNSString.m
//  ObjC-NSDictionary
//
//  Created by Nikolay Dementiev on 12.09.16.
//  Copyright © 2016 mc373. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CategotyNSString.h"

@implementation NSString (Utilities)

- (BOOL) isURL {
		if ([self hasPrefix:@"http://"]) {
				return YES;
		} else {
				return NO;
		}
}

@end

//NSString* string1 = @"http://apple.com/";
//NSString* string2 = @"Apple";
//if ([string1 isURL]) {
//		NSLog (@"string1 это URL");
//}
//if ([string2 isURL]) {
//		NSLog (@"string2 это URL");
//}
