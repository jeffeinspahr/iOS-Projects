//
//  valueStorage.m
//  Calculator
//
//  Created by Jeff Einspahr on 10/26/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import "valueStorage.h"

@implementation valueStorage

@synthesize operandOne, operandTwo;


-(double)add {
    if (operandOne != nil) {
        if (operandTwo != nil) {
            return ([operandOne doubleValue] + [operandTwo doubleValue]);
        }
        return [operandOne doubleValue];
    }
    return 0.0;
}
-(double)subtract {
    if (operandOne != nil) {
        if (operandTwo != nil) {
            return ([operandOne doubleValue] - [operandTwo doubleValue]);
        }
        return [operandOne doubleValue];
    }
    return 0.0;

}
-(double)multiply {
    if (operandOne != nil) {
        if (operandTwo != nil) {
            return ([operandOne doubleValue] * [operandTwo doubleValue]);
        }
        return [operandOne doubleValue];
    }
    return 0.0;

}
-(double)divide {
    if (operandOne != nil) {
        if (operandTwo != nil) {
            return ([operandOne doubleValue] / [operandTwo doubleValue]);
        }
        return [operandOne doubleValue];
    }
    return 0.0;

}
-(double)squareRoot {
    return (sqrt([operandOne doubleValue]));

}

@end
