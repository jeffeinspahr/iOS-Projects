//
//  ViewController2.h
//  myDiscountCalc
//
//  Created by Jeff Einspahr on 10/12/13.
//  Copyright (c) 2013 jeffeinspahr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Price.h"
#import "graphicsView.h"

@interface ViewController2 : UIViewController
@property (retain) Price* secondPrice;
- (IBAction)recognizeSwipe:(UISwipeGestureRecognizer *)sender;

-(void) setModel: (Price*)newModel;
- (Price*) getModel;

@end
