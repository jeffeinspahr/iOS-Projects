//
//  MetrolinkRouteViewController.h
//  LATransit
//
//  Created by Jeff Einspahr on 11/16/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MetrolinkDatabase.h"
@interface MetrolinkRouteViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>
{
    MetrolinkDatabase* database;
}

@property (retain,nonatomic) NSArray* routes;
@end
