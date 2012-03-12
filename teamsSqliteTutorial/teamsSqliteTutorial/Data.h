//
//  Data.h
//  teamsSqlite
//
//  Created by Andrea Giannantonio on 09/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface Data : NSObject {
    NSString *pathDB;
    NSMutableArray *lista;
}

@property (nonatomic, retain) NSMutableArray *lista;

- (void)caricaValori;
- (void)cancellaSquadra:(NSMutableDictionary*)team;
- (void)aggiungiSquadra:(NSMutableDictionary*)team;

@end
