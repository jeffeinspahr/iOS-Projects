//
//  graphicsView.h
//  myDiscCalc
//
//  Created by Jeff Einspahr on 10/13/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Price.h"

@interface graphicsView : UIView
@property (weak) Price* viewPrice;
-(void) setModel: (Price*)newModel;
- (Price*) getModel;

@end
