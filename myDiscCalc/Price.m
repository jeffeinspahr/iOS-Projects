//
//  Price.m
//  myDiscountCalc
//
//  Created by Jeff Einspahr on 10/12/13.
//  Copyright (c) 2013 jeffeinspahr. All rights reserved.
//

#import "Price.h"

@implementation Price
-(double) calcDiscPrice {
    double discountedPrice = 0.0;
    discountedPrice = [self.price doubleValue] - [self.dollarsOff doubleValue]- ([self.discountPercent doubleValue]/100 * [self.price doubleValue])-([self.addDiscPercent doubleValue]/100 * [self.price doubleValue]);    
    return discountedPrice;
}

@end
