//
//  ViewController.m
//  ObjC-NSDictionary
//
//  Created by Nikolay Dementiev on 08.09.16.
//  Copyright © 2016 mc373. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
		createNSDictionary();
		createNSMutableDictionary();

		createNSRange();

		createDateExample();
}

- (void)dealloc
{
		[result release];
		[super dealloc];
}

- (void)viewDidUnload
{
		[super viewDidUnload];
		self.result = nil;
}

- (void)didReceiveMemoryWarning {
		[super didReceiveMemoryWarning];
		// Dispose of any resources that can be recreated.
}

void createDateExample() {

		NSDate *currentDate = [NSDate date];
		NSLog(@"%@", currentDate);

		NSDateFormatter *dateFormatter = [[NSDateFormatter new] autorelease];
		[dateFormatter setDateStyle:kCFDateFormatterMediumStyle];
		[dateFormatter setTimeStyle:kCFDateFormatterShortStyle];
		NSString *strDate = [dateFormatter stringFromDate:currentDate];
		NSLog(@"%@", strDate);

		[dateFormatter setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss ZZZ"];
		NSLog(@"%@", [dateFormatter stringFromDate:currentDate]);

		NSString *currentStrDate = @"2008/08/18 13-45-01";
		NSDateFormatter *dateFormatterStr = [[NSDateFormatter new] autorelease];
		[dateFormatterStr setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
		[dateFormatterStr setDateFormat:@"yyyy/MM/dd HH-mm-ss"];
		NSDate *dateFromStr = [dateFormatterStr dateFromString:currentStrDate];
		NSLog(@"%@", dateFromStr);

		NSDate *newDate = [currentDate dateByAddingTimeInterval:60*60*24];
		NSLog(@"%@", newDate);

		BOOL equal = [currentDate isEqualToDate:newDate];
		NSLog(@"%i", equal);

		NSLog(@"earlier:%@", [currentDate earlierDate:newDate]);
		NSLog(@"later:%@", [currentDate laterDate:newDate]);

}

void createNSRange() {

		NSString *s = @"Student name: Ivan";
		NSRange r = NSMakeRange(14, 4);
		NSLog(@"%@", [s substringWithRange:r]);

		NSRange r1;
		r1.location = 14;
		r1.length = 4;
		NSLog(@"r1.location = %i  r1.length = %i", r1.location, r1.length);

		NSString *url = @"http://imaladec.com";
		NSRange range = NSMakeRange(7, [url length]-7);
		NSString *subString = [url substringWithRange:range];
		NSLog(@"subString = %@", subString);

}

void createNSDictionary() {

		NSArray *girls = [NSArray arrayWithObjects:@"Amanda", @"Ira", @"Natali", nil];
		NSArray *boys = [NSArray arrayWithObjects:@"Sergei", @"Vova", @"Ivan", nil];
		NSDictionary *children = [NSDictionary dictionaryWithObjectsAndKeys:girls, boys, nil];
		NSLog(@"girls: %@", [children objectForKey:@"girls"]);
		NSLog(@"boys: %@", [children objectForKey:@"boys"]);

		NSDictionary *d1 = [NSDictionary dictionary];
		NSDictionary *d2 = [NSDictionary dictionaryWithObject:@"Bill" forKey:@"name"];
		NSDictionary *d3 = [NSDictionary dictionaryWithDictionary:d2];

		NSArray *theObjects = [NSArray arrayWithObjects:@"Bill", [NSNumber numberWithInt:32], nil];
		NSArray *theKeys = [NSArray arrayWithObjects:@"name", @"age", nil];
		NSDictionary *d4 = [NSDictionary dictionaryWithObjects:theObjects forKeys:theKeys];
		NSLog(@"%@", d4);

		NSDictionary *d5 = [NSDictionary dictionaryWithObjectsAndKeys:
												@"Bill", @"name",
												[NSNumber numberWithInt:32], @"age",
												nil];
		NSLog(@"%@", d5);

		NSInteger count = [d5 count];
		NSLog(@"%i", count);

		BOOL equal = [d5 isEqualToDictionary:d4];
		NSLog(@"Equal? %i", equal);

		NSArray *keys = [d4 allKeys];
		NSLog(@"Keys: %@", keys);

		NSArray *values = [d5 allValues];
		NSLog(@"Values: %@", values);

		id obj = [d5 objectForKey:@"name"];
		NSLog(@"Value for name is %@", obj);
}

void createNSMutableDictionary() {

		NSMutableDictionary *d1 = [NSMutableDictionary dictionaryWithCapacity:2];
		NSMutableDictionary *d2 = [[NSMutableDictionary alloc] initWithCapacity:2];
		[d2 release];

		[d1 setObject:@"String constant" forKey:@"string"];
		NSLog(@"%@", d1);

		[d1 setObject:@"New value" forKey:@"string"];
		NSLog(@"%@", d1);

		NSDictionary *d = [NSDictionary dictionaryWithObjectsAndKeys:
											 @"Shane Stanley", @"name",
											 @"Russia", @"country",
											 nil];
		[d1 addEntriesFromDictionary:d];
		NSLog(@"%@", d1);

		NSDictionary *d3 = [NSDictionary dictionaryWithObjectsAndKeys:
												@"Sara Konor", @"name",
												@"USA", @"country",
												@"111-555-1212", @"phone",
												@"sk@gmail.com", @"email",
												@"Programmer", @"profession",
												nil];
		[d1 setDictionary:d3];
		NSLog(@"%@", d1);

		[d1 removeObjectForKey:@"country"];
		NSLog(@"%@", d1);

		NSArray *keysForRemove = [NSArray arrayWithObjects:@"phone", @"email", @"profession", nil];
		[d1 removeObjectsForKeys:keysForRemove];
		NSLog(@"%@", d1);

		[d1 removeAllObjects];
		NSLog(@"%@", d1);

}



@end
