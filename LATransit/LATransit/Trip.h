//
//  Trip.h
//  LATransit
//
//  Created by Jeff Einspahr on 11/14/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Trip : NSObject
@property (readonly) NSString* route_id;
@property (readonly) NSString* service_id;
@property (readonly) int trip_id;

- (id) initWithRouteId: (NSString*) routeId andServiceId: (NSString*) serviceId andTripId: (int)tripId;
@end
