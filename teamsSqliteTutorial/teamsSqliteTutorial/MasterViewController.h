//
//  MasterViewController.h
//  teamsSqlite
//
//  Created by Andrea Giannantonio on 09/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Data.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController {
    Data *dataList;
}

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
