//
//  ViewController.h
//  ObjC-NSDictionary
//
//  Created by Nikolay Dementiev on 08.09.16.
//  Copyright © 2016 mc373. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
		UILabel *result;
}

@property (nonatomic, retain) IBOutlet UILabel *result;

- (IBAction)setTo5;
- (IBAction)reset;

@end


