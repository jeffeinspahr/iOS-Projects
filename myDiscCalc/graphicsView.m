//
//  graphicsView.m
//  myDiscCalc
//
//  Created by Jeff Einspahr on 10/13/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import "graphicsView.h"

@implementation graphicsView

- (void) setModel: (Price*)newModel {
    self.viewPrice = newModel;
}

- (Price*) getModel {
    return self.viewPrice;
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.*/
- (void)drawRect:(CGRect)rect
{
    
    double tax = ([self.viewPrice.price doubleValue] * ([self.viewPrice.tax doubleValue]/100.0));
    double discCost = self.viewPrice.calcDiscPrice + tax;
    double discount = ([self.viewPrice.price doubleValue] + tax) - discCost;
    double totalDiscPercent = discount/([self.viewPrice.price doubleValue] + tax);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0);
    //draw total price rect
    CGContextAddRect(context, CGRectMake(30.0, 30.0, 75.0, 400.0));
    CGContextFillPath(context);
    //draw discount price rect
    CGContextSetRGBFillColor(context, 0.0, 1.0, 0.0, 1.0);
    CGContextAddRect(context, CGRectMake(215.0, 30.0, 75.0, 400.0));
    CGContextFillPath(context);
    //draw discount ammount
    CGContextSetRGBFillColor(context,0.0,0.0,1.0, 1.0);
    CGContextAddRect(context, CGRectMake(215.0, 30.0, 75.0, (400.0 *totalDiscPercent)));
    CGContextFillPath(context);

    
}
@end
