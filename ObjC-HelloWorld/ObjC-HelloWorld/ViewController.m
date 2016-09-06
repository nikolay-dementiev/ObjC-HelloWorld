//
//  ViewController.m
//  ObjC-HelloWorld
//
//  Created by Nikolay Dementiev on 03.09.16.
//  Copyright © 2016 mc373. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

float circleArea(float theRadius);

- (void)viewDidLoad {
		[super viewDidLoad];
		// Do any additional setup after loading the view, typically from a nib.

		//		UILabel *helloWorld = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 100.0f, 100.0f, 20.0f)];
		//		helloWorld.backgroundColor = [UIColor clearColor];
		//		helloWorld.text = @"Hello world";
		//		[self.view addSubview:helloWorld];
		//		//[helloWorld release];

		//		float pictureWidth, pictureHeight, pictureSurfaceArea,
		//		circleRadius, circleSurfaceArea;
		//		pictureWidth = 8.0;
		//		pictureHeight = 4.5;
		//		circleRadius = 5.0;
		//		pictureSurfaceArea = pictureWidth * pictureHeight;
		//
		//		circleSurfaceArea = circleArea(circleRadius);
		//
		//		NSLog(@"%f", circleSurfaceArea);

		//		CGFloat pictureWidth, pictureHeight, pictureSurfaceArea,
		//		circleRadius, circleSurfaceArea;
		//		pictureWidth = 8.0;
		//		pictureHeight = 4.5;
		//		circleRadius = 5.0;
		//		pictureSurfaceArea = pictureWidth * pictureHeight;
		//
		//		circleSurfaceArea = [self circleArea:circleRadius];
		//		NSLog(@"%f", circleSurfaceArea);

		NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
		NSString *result = [userDefaults objectForKey:@"name"];
		if ([result length]) {
    NSLog(@"name = %@", [userDefaults objectForKey:@"name"]);
    NSLog(@"age = %li", (long)[userDefaults integerForKey:@"age"]);
    NSLog(@"student = %i", [userDefaults boolForKey:@"student"]);
		} else {
    NSLog(@"Add values to UserDefaults");
    [userDefaults setObject:@"Ira" forKey:@"name"];
    [userDefaults setInteger:24 forKey:@"age"];
    [userDefaults setBool:YES forKey:@"student"];
    [userDefaults synchronize];
		}

}

//float circleArea(float theRadius)
//{
//		return (3.14159 * theRadius * theRadius);
//}

//- (CGFloat)circleArea:(CGFloat)theRadius {
//		return (3.14159 * theRadius * theRadius);
//}

- (void)didReceiveMemoryWarning {
		[super didReceiveMemoryWarning];
		// Dispose of any resources that can be recreated.
}

@end
