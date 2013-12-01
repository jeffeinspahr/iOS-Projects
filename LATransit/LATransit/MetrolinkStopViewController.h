//
//  MetrolinkStopViewController.h
//  LATransit
//
//  Created by Jeff Einspahr on 11/14/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MetrolinkDatabase.h"

@interface MetrolinkStopViewController : UITableViewController
{
    MetrolinkDatabase* database;
}

@property (retain,nonatomic) NSArray* stops;
@property (retain,nonatomic) Route* route;


@end
