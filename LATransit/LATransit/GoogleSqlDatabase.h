//
//  GoogleSqlDatabase.h
//  LATransit
//
//  Created by Jeff Einspahr on 11/14/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import "sqlDatabase.h"
#import "Route.h"
#import "Stop.h"
#import "StopTimes.h"
#import "Trip.h"



@interface GoogleSqlDatabase : sqlDatabase

- (NSArray*)allRoutes;
- (NSArray*)stopsForRoute:(Route*)route;
- (NSArray*)timesForStop: (Stop*)stop;

@end
