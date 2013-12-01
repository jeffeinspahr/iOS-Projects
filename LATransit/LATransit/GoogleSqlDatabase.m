//
//  GoogleSqlDatabase.m
//  LATransit
//
//  Created by Jeff Einspahr on 11/14/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import "GoogleSqlDatabase.h"

@implementation GoogleSqlDatabase

- (NSArray*)allRoutes
{
    NSMutableArray* routes = [[NSMutableArray alloc] init];
    NSString* query = @"Select route_id, route_short_name, route_long_name, route_type from routes";
    sqlite3_stmt* stmt;
    const unsigned char* text;
    NSString *routeId, *routeShortName, *routeLongName;
    routeType myRouteType;
    
    if( sqlite3_prepare_v2(databasePointer, [query UTF8String], [query length], &stmt, nil) == SQLITE_OK) {
        while (sqlite3_step(stmt) == SQLITE_ROW) {
            text = sqlite3_column_text(stmt, 0);
            if( text )
                routeId = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                routeId = nil;
            text = sqlite3_column_text(stmt, 1);
            if( text )
                routeShortName = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                routeShortName = nil;
            text = sqlite3_column_text(stmt, 2);
            if( text )
                routeLongName = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                routeLongName = nil;
            myRouteType = sqlite3_column_int(stmt, 3);
            
            Route* newRoute = [[Route alloc] initWithRouteId:routeId andShortName:routeShortName andLongName:routeLongName andRouteType:myRouteType];
            [routes addObject:newRoute];
        }
        sqlite3_finalize(stmt);
    }
    return routes;

}
- (NSArray*)stopsForRoute:(Route*)route
{
    NSMutableArray* stops = [[NSMutableArray alloc] init];
    sqlite3_stmt* stmt;
    const unsigned char* text;
    
    NSString *stopId, *stopName;
    double stopLatitude, stopLongitude;
    NSString* query = [NSString stringWithFormat:@"select distinct stops.stop_id, stop_name, stop_lat, stop_lon from stop_times, stops, trips where trips.trip_id=stop_times.trip_id and stop_times.stop_id=stops.stop_id and route_id=\"%@\" order by stops.stop_id",[route route_id]] ;
    if( sqlite3_prepare_v2(databasePointer, [query UTF8String], [query length], &stmt, nil) == SQLITE_OK) {
        while (sqlite3_step(stmt) == SQLITE_ROW) {
            text = sqlite3_column_text(stmt, 0);
            if( text )
                stopId = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                stopId = nil;
            text = sqlite3_column_text(stmt, 1);
            if( text )
                stopName = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                stopName = nil;
            stopLatitude = sqlite3_column_double(stmt, 2);
            stopLongitude = sqlite3_column_double(stmt, 3);
            
            Stop* newStop = [[Stop alloc] initWithId:stopId
                                                 andName:stopName
                                                  andLongitude:stopLongitude
                                                  andLatitude:stopLatitude];
            [stops addObject:newStop];
        }
        sqlite3_finalize(stmt);
    }
    return stops;

}
- (NSArray*)timesForStop: (Stop*)stop
{
    NSMutableArray* times = [[NSMutableArray alloc] init];
    NSString* query = [NSString stringWithFormat:@"select trip_id, arrival_time, departure_time, stop_id, stop_sequence from stop_times where stop_id = %s",[stop.stop_id UTF8String]];
    sqlite3_stmt* stmt;
    const unsigned char* text;
    NSString *arrival, *departure, *stopId;
    int tripId, stopSequence = 0;
    
    if( sqlite3_prepare_v2(databasePointer, [query UTF8String], [query length], &stmt, nil) == SQLITE_OK) {
        while (sqlite3_step(stmt) == SQLITE_ROW) {
            tripId = sqlite3_column_int(stmt, 0);
            text = sqlite3_column_text(stmt, 1);
            if( text )
                arrival = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                arrival = nil;
            text = sqlite3_column_text(stmt, 2);
            if( text )
                departure = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                departure = nil;
            text = sqlite3_column_text(stmt, 3);
            if( text )
                stopId = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                stopId = nil;
            stopSequence = sqlite3_column_int(stmt, 4);
            
            StopTimes* newTime = [[StopTimes alloc] initWithTripId:tripId
                                                        andArrivalTime:arrival
                                                      andDepartureTime:departure
                                                             andStopId:stopId andStopSequence:stopSequence];
            [times addObject:newTime];
        }
        sqlite3_finalize(stmt);
    }
    return times;

}


@end
