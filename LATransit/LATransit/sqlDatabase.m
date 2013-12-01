//
//  sqlDatabase.m
//  LATransit
//
//  Created by Jeff Einspahr on 11/14/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import "sqlDatabase.h"

@implementation sqlDatabase

static sqlDatabase* _databaseObj;

+ (sqlDatabase*) databaseWithName: (NSString*)dbName
{
    if (_databaseObj == nil) {
        _databaseObj = [[sqlDatabase alloc] initWithDB:dbName];
    }
    return _databaseObj;
}

- (id)initWithDB: (NSString*)dbName
{
    self = [super init];
    if (self) {
        NSString* dbpath = [[NSBundle mainBundle] pathForResource:dbName ofType:@"sl3"];
        if (sqlite3_open([dbpath UTF8String], &databasePointer) != SQLITE_OK) {
            NSLog(@"Failed to open database.");
        }
    }
    return self;
}

- (void) dealloc
{
    sqlite3_close(databasePointer);
}

@end
