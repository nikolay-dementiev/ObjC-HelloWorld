//
//  MyClass.h
//  ObjC-NSDictionary
//
//  Created by Nikolay Dementiev on 12.09.16.
//  Copyright © 2016 mc373. All rights reserved.
//

//#ifndef MyClass_h
//#define MyClass_h
//
//
//#endif /* MyClass_h */

#import <Foundation/Foundation.h>

@interface MyClass : NSObject {
		NSString *name;
		NSString *adress;
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *adress;

@end