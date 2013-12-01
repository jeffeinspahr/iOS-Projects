//
//  Route.m
//  LATransit
//
//  Created by Jeff Einspahr on 11/14/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import "Route.h"

@implementation Route

@synthesize route_id, route_short_name, route_long_name, route_type;

+ (NSString*) routeTypeStrFromRouteType: (routeType) route {
    switch (route) {
        case tram:
            return @"Tram";
        case subway:
            return @"Subway";
        case rail:
            return @"Rail";
        case bus:
            return @"Bus";
        case ferry:
            return @"Ferry";
        case cableCar:
            return @"Cable Car";
        case gondola:
            return @"Gondola";
        case funicular:
            return @"Funicular";
        default:
            return @"Unknown";
    }
}

- (id) initWithRouteId: (NSString*)routeId andShortName: (NSString*)shortName andLongName: (NSString*)longName andRouteType:(routeType)type {
    self = [super init];
    if (self != nil)
    {
        route_id = routeId;
        route_short_name = shortName;
        route_long_name = longName;
        route_type = type;
    }
    return self;
}

@end
