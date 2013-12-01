//
//  Trip.m
//  LATransit
//
//  Created by Jeff Einspahr on 11/14/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import "Trip.h"

@implementation Trip

@synthesize route_id, service_id, trip_id;

- (id) initWithRouteId: (NSString*) routeId andServiceId: (NSString*) serviceId andTripId: (int)tripId
{
    self = [super init];
    if (self != nil)
    {
        route_id = routeId;
        service_id = serviceId;
        trip_id = tripId;
    }
    return self;

}

@end
