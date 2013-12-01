//
//  MtaRouteViewController.h
//  LATransit
//
//  Created by Jeff Einspahr on 11/14/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MtaDatabase.h"

@interface MtaRouteViewController : UITableViewController
{
    MtaDatabase* database;
}

@property (retain,nonatomic) NSArray* routes;

@end
