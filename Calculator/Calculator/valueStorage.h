//
//  valueStorage.h
//  Calculator
//
//  Created by Jeff Einspahr on 10/26/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface valueStorage : NSObject
@property (retain) NSNumber* operandOne;
@property (retain) NSNumber* operandTwo;

-(double)add;
-(double)subtract;
-(double)multiply;
-(double)divide;
-(double)squareRoot;

@end
