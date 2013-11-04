//
//  Price.h
//  myDiscountCalc
//
//  Created by Jeff Einspahr on 10/12/13.
//  Copyright (c) 2013 jeffeinspahr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Price : NSObject
@property (retain,nonatomic) NSNumber* price;
@property (retain,nonatomic) NSNumber* dollarsOff;
@property (retain,nonatomic) NSNumber* discountPercent;
@property (retain,nonatomic) NSNumber* addDiscPercent;
@property (retain,nonatomic) NSNumber* tax;
-(double) calcDiscPrice;
@end
